<?php

final class Plugins
{
    private $plugins = array();

    public function register($name, Plugin $plugin)
    {
        $this->plugins[$name] = $plugin;
    }

    public function knowsOf($name)
    {
        return isset($this->plugins[$name]);
    }

    public function getByName($name)
    {
        if ($this->knowsOf($name) === false) {
            throw new InvalidArgumentException('Plugin not found:' . $name);
        }

        return $this->plugins[$name];
    }

    public function aWorkingPlugin()
    {
        if (empty($this->plugins)) {
            throw new InvalidArgumentException('No plugins registered');
        }

        $workingPlugins = $this->nameOfRegisteredPlugins();

        return reset($workingPlugins);
    }

    public function nameOfRegisteredPlugins()
    {
        return array_keys($this->plugins);
    }
}
