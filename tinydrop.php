<?php

final class TinyDrop
{
    /**
     * @var string Path to the settings file
     */
    private $settingsFile;

    /**
     * @var object Settings
     */
    private $settings;

    /**
     * @var object Arguments
     */
    private $arguments;

    /**
     * @var array Plugins
     */
    private $plugins;

    /**
     * Constructor Method
     */
    public function __construct($settingsFile, $arguments)
    {
        // Typecast
        $this->settingsFile = (string) $settingsFile;
        $this->arguments = (object) $arguments;

        // Read settings
        $this->getSettings();

        // Get plugins
        $this->getPlugins();

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
            $this->settings->host = (in_array($settings[0], $this->plugins)) ? $settings[0] : $this->plugins[0];
            $this->settings->user = $settings[1];
            $this->settings->pass = $settings[2];

            // Save
            $this->setSettings();
        }

        // Plugins
        elseif ($this->arguments->do == '2') {
            // Output the plugins
            echo implode('PARSE', $this->plugins);
        }

        // Upload
        else {
            // Check image
            if ($this->isImage($this->arguments->data) === false) {
                return false;
            }

            // Check host
            if (in_array($this->settings->host, $this->plugins)) {
                // Include plugin base
                require_once __DIR__ . '/Plugin.php';
                require_once __DIR__ . '/HttpClient.php';
                require_once __DIR__ . '/Curl.php';

                // Include plugin
                require_once __DIR__ . '/plugins/' . $this->settings->host . '.tdpi.php';

                // Initiate
                $client = new Curl();
                $host = new $this->settings->host($client);

                // Get Url
                $url = $host->upload($this->arguments->data, $this->settings->user, $this->settings->pass);

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
     * Method to get a list of available plugins
     */
    private function getPlugins()
    {
        // Prepare array
        $this->plugins = array();

        // Open the dir
        if ($handle = opendir(dirname(__FILE__).'/plugins/')) {
            // Walk through files
            while (false !== ($file = readdir($handle))) {
                // Check check for plugin files.
                if (substr($file, -9) == '.tdpi.php') {
                    $this->plugins[] = substr($file, 0, -9);
                }
            }
        }

        // Return
        return $this->plugins;
    }

    /**
     * Method to read the settings file
     */
    private function getSettings()
    {
        // Get settings
        $this->settings = (object) @json_decode(@file_get_contents($this->settingsFile));

        // Return
        return $this->settings;
    }

    /**
     * Method to write the settings file
     */
    private function setSettings()
    {
        // Write to file
        @file_put_contents($this->settingsFile, @json_encode($this->settings));
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
    $settingsFile = dirname(__FILE__).'/settings.json';

    // Create arguments
    $arguments = new stdClass();
    $arguments->do = $argv[1];
    $arguments->data = (isset($argv[2]) && !empty($argv[2])) ? $argv[2] : false ;

    // Create TinyDrop instance
    $td = new TinyDrop($settingsFile, $arguments);
}
