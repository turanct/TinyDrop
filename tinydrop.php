<?php

require_once __DIR__ . '/src/TinyDrop.php';

// Get settings file name
$settingsFile = dirname(__FILE__).'/settings.json';

// Create arguments
$arguments = new stdClass();
$arguments->do = $argv[1];
$arguments->data = (isset($argv[2]) && !empty($argv[2])) ? $argv[2] : false ;

// Create TinyDrop instance
$td = new TinyDrop($settingsFile, $arguments);
