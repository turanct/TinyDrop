<?php

final class Settings implements KeyValueStore
{
    private $file;
    private $settings;

    public function __construct($file)
    {
        $this->file = (string) $file;

        $json = file_get_contents($this->file);
        $settings = json_decode($json, true);

        if (!is_array($settings)) {
            $settings = array();
        }

        $this->settings = $settings;
    }

    public function get($key)
    {
        if (isset($this->settings[$key])) {
            return $this->settings[$key];
        }

        throw new InvalidArgumentException('Key not found: ' . $key);
    }

    public function set($key, $value)
    {
        $this->settings[$key] = $value;

        $this->persist();
    }

    private function persist()
    {
        $json = json_encode($this->settings);

        file_put_contents($this->file, $json);
    }
}
