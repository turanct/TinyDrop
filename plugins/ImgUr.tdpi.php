<?php
/**
 * ImgUr plugin for TinyDrop
 */
class ImgUr extends TDPlugin {
	// --------------------------------------------------------- Variables ---------------------------------------------------------



	// ---------------------------------------------------------- Methods ----------------------------------------------------------
	/**
	 * Constructor Method
	 */
	public function __construct() {
		// Set api url
		$this->url = 'https://api.imgur.com/2/upload.json';

		// Set api key
		$this->apiKey = 'c29fc2d9d44dffd13c714651062044dd';
	}


	/**
	 * Method to generate the post data
	 *
	 * @param string		$img		The image path
	 */
	protected function postData($img) {
		// Return
		return array('image' => "@$img", 'key' => $this->apiKey);
	}


	/**
	 * Method to parse the output
	 *
	 * @param string		$result		The result of the request
	 */
	protected function parse($result) {
		// Decode json
		$decoded = json_decode($result);

		// Return
		return $decoded->upload->links->original;
	}
}
?>