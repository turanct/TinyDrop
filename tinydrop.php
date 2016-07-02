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
     * @var Plugins
     */
    private $plugins;

    /**
     * Constructor Method
     */
    public function __construct(KeyValueStore $settings, Plugins $plugins)
    {
        $this->settings = $settings;
        $this->plugins = $plugins;
    }

    /**
     * Method to interpret the arguments
     */
    public function interpret($do, $data)
    {
        // Setup
        if ($do == '1') {
            // Raw settings
            $settings = explode('PARSE', $data);
            $pluginName = $settings[0];
            $host = ($this->plugins->knowsOf($pluginName)) ? $pluginName : $this->plugins->aWorkingPlugin();
            $user = $settings[1];
            $pass = $settings[2];

            $this->saveSettings($host, $user, $pass);
        }

        // Plugins
        elseif ($do == '2') {
            $this->outputPlugins();
        }

        // Upload
        else {
            $image = $data;

            $this->uploadImage($image);
        }
    }

    private function uploadImage($image)
    {
        // Check image
        if ($this->isImage($image) === false) {
            return false;
        }

        // Check host
        if (in_array($this->settings->get('host'), $this->plugins->nameOfRegisteredPlugins())) {
            // Include plugin
            $hostName = $this->settings->get('host');

            $host = $this->plugins->getByName($hostName);

            // Get Url
            $url = $host->upload(
                $image,
                $this->settings->get('user'),
                $this->settings->get('pass')
            );

            // Output
            echo $url;

            // Add to paste buffer
            passthru('echo "' . $url . '" | pbcopy');
        }

        // Host doesn't exist
        else {
            echo "http://plugin.doesnt.exist";
        }
    }

    private function outputPlugins()
    {
        echo implode('PARSE', $this->plugins->nameOfRegisteredPlugins());
    }

    private function saveSettings($host, $user, $pass)
    {
        $this->settings->set('host', $host);
        $this->settings->set('user', $user);
        $this->settings->set('pass', $pass);
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

    // Create TinyDrop instance
    $td = new TinyDrop($settings, $plugins);

    $do = $argv[1];
    $data = (isset($argv[2]) && !empty($argv[2])) ? $argv[2] : false ;
    $td->interpret($do, $data);
}
