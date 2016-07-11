<?php

require_once __DIR__ . '/KeyValueStore.php';
require_once __DIR__ . '/Settings.php';
require_once __DIR__ . '/Plugins.php';
require_once __DIR__ . '/Plugin.php';
require_once __DIR__ . '/HttpClient.php';
require_once __DIR__ . '/Curl.php';
require_once __DIR__ . '/plugins/ImgUr.tdpi.php';
require_once __DIR__ . '/TinyDrop.php';
require_once __DIR__ . '/Factory.php';

$td = Factory::getTinyDropInstance();

$do = $argv[1];
$data = (isset($argv[2]) && !empty($argv[2])) ? $argv[2] : false ;

if ($do == '1') {
    // Setup
    $settings = explode('PARSE', $data);
    $host = $settings[0];
    $user = $settings[1];
    $pass = $settings[2];

    $td->saveSettings($host, $user, $pass);
} elseif ($do == '2') {
    // Plugins
    $td->outputPlugins();
} else {
    // Upload
    $image = $data;

    $td->uploadImage($image);
}
