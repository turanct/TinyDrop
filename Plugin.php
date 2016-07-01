<?php

interface Plugin
{
    /**
     * Upload an image
     *
     * @param string $image The image's path
     * @param string $user The service username
     * @param string $pass The service password
     *
     * @return string The image's URL
     */
    public function upload($image, $user, $pass);
}
