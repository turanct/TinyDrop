<?php

interface HttpClient
{
    public function send(
        $method,
        $url,
        array $data = array(),
        array $headers = array()
    );
}
