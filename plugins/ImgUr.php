<?php

final class ImgUr implements Plugin
{
    private $url;
    private $clientId;
    private $client;

    public function __construct(HttpClient $client)
    {
        $this->url = 'https://api.imgur.com/3/image';
        $this->clientId = '4eade42af1a0fd4';

        $this->client = $client;
    }

    public function upload($image, $user = '', $pass = '')
    {
        $data = array(
            'image' => "@$image",
        );

        $headers = array(
            'Authorization: Client-ID ' . $this->clientId,
        );

        $raw = $this->client->send('POST', $this->url, $data, $headers);

        $uploadedImage = json_decode($raw, true);
        $uploadedImage = $uploadedImage['data'];

        return $uploadedImage['link'];
    }
}
