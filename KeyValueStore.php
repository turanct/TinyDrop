<?php

interface KeyValueStore
{
    public function get($key);
    public function set($key, $value);
}
