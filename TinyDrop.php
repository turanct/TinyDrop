<?php

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

    public function uploadImage($image)
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

    public function outputPlugins()
    {
        echo implode('PARSE', $this->plugins->nameOfRegisteredPlugins());
    }

    public function saveSettings($host, $user, $pass)
    {
        $host = ($this->plugins->knowsOf($host)) ? $host : $this->plugins->aWorkingPlugin();

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
