<?php

final class Curl implements HttpClient
{
    public function send(
        $method,
        $url,
        array $data = array(),
        array $headers = array()
    ) {
        $curlHandler = curl_init($url);

        // Set Curl Options
        curl_setopt($curlHandler, CURLOPT_URL, $url);
        curl_setopt($curlHandler, CURLOPT_TIMEOUT, 240);
        curl_setopt($curlHandler, CURLOPT_POST, 1);
        curl_setopt($curlHandler, CURLOPT_POSTFIELDS, $data);
        curl_setopt($curlHandler, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($curlHandler, CURLOPT_FOLLOWLOCATION, 1);

        // We don't need return headers
        curl_setopt($curlHandler, CURLOPT_HEADER, 0);

        // Return the result of our post request
        curl_setopt($curlHandler, CURLOPT_RETURNTRANSFER, 1);

        // Execute The Curl Request
        $returnData = curl_exec($curlHandler);

        // Check for errors
        if ($returnData === false) {
            return false;
        }

        return $returnData;
    }
}
