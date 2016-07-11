<?php

final class Factory
{
    public function getSettings()
    {
        $settingsFile = __DIR__ . '/settings.json';
        $settings = new Settings($settingsFile);

        return $settings;
    }

    public function getHttpClient()
    {
        return new Curl();
    }

    public function getPlugins()
    {
        $plugins = new Plugins();
        $client = static::getHttpClient();

        $plugins->register('ImgUr', new ImgUr($client));

        return $plugins;
    }

    public function getTinyDropInstance()
    {
        $settings = static::getSettings();
        $plugins = static::getPlugins();

        $td = new TinyDrop($settings, $plugins);

        return $td;
    }
}
