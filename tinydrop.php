<?php

require_once __DIR__ . '/KeyValueStore.php';
require_once __DIR__ . '/Settings.php';
require_once __DIR__ . '/Plugins.php';
require_once __DIR__ . '/Plugin.php';
require_once __DIR__ . '/HttpClient.php';
require_once __DIR__ . '/Curl.php';
require_once __DIR__ . '/plugins/ImgUr.tdpi.php';

final class TinyDrop
{
    /**
     * @var KeyValueStore
     */
    private $settings;

    /**
     * @var object Arguments
     */
    private $arguments;

    /**
     * @var Plugins
     */
    private $plugins;

    /**
     * Constructor Method
     */
    public function __construct(KeyValueStore $settings, Plugins $plugins, $arguments)
    {
        $this->settings = $settings;
        $this->plugins = $plugins;
        $this->arguments = (object) $arguments;

        // Interpret
        $this->interpret();
    }

    /**
     * Method to interpret the arguments
     */
    private function interpret()
    {
        // Setup
        if ($this->arguments->do == '1') {
            // Raw settings
            $settings = explode('PARSE',$this->arguments->data);

            // Add to settings
            $pluginName = $settings[0];
            $host = ($this->plugins->knowsOf($pluginName)) ? $pluginName : $this->plugins->aWorkingPlugin();
            $this->settings->set('host', $host);

            $user = $settings[1];
            $this->settings->set('user', $user);

            $pass = $settings[2];
            $this->settings->set('pass', $pass);
        }

        // Plugins
        elseif ($this->arguments->do == '2') {
            // Output the plugins
            echo implode('PARSE', $this->plugins->nameOfRegisteredPlugins());
        }

        // Upload
        else {
            // Check image
            if ($this->isImage($this->arguments->data) === false) {
                return false;
            }

            // Check host
            if (in_array($this->settings->get('host'), $this->plugins->nameOfRegisteredPlugins())) {
                // Include plugin
                $hostName = $this->settings->get('host');

                $host = $this->plugins->getByName($hostName);

                // Get Url
                $url = $host->upload(
                    $this->arguments->data,
                    $this->settings->get('user'),
                    $this->settings->get('pass')
                );

                // Output
                echo $url;

                // Add to paste buffer
                passthru('echo "' . $url . '" | pbcopy');

                return true;
            }

            // Host doesn't exist
            else {
                echo "http://plugin.doesnt.exist";
                return false;
            }
        }
    }

    /**
     * Method to check if the given file is an image
     */
    private function isImage($img)
    {
        // Get image pathinfo
        $pathinfo = pathinfo($img);
        $ext = strtolower($pathinfo['extension']);

        // Check
        return in_array($ext, array('jpg', 'jpeg', 'gif', 'png', 'tif', 'tiff', 'psd', 'ico'));
    }
}



// Run the script if we're not included by another php file
if (basename(__FILE__) == basename($_SERVER['PHP_SELF'])) {
    // Get settings file name
    $settingsFile = __DIR__ . '/settings.json';
    $settings = new Settings($settingsFile);

    // Get Curl client
    $client = new Curl();

    // Register plugins
    $plugins = new Plugins();
    $plugins->register('ImgUr', new ImgUr($client));

    // Create arguments
    $arguments = new stdClass();
    $arguments->do = $argv[1];
    $arguments->data = (isset($argv[2]) && !empty($argv[2])) ? $argv[2] : false ;

    // Create TinyDrop instance
    $td = new TinyDrop($settings, $plugins, $arguments);
}
