<?php
/**
 * Base class for the plugins
 */
class TDPlugin {
	// --------------------------------------------------------- Variables ---------------------------------------------------------
	/**
	 * @var string	Username
	 */
	protected $user;

	/**
	 * @var string	Password
	 */
	protected $pass;

	/**
	 * @var string	Url
	 */
	protected $url;


	// ---------------------------------------------------------- Methods ----------------------------------------------------------
	/**
	 * Constructor Method
	 */
	public function __construct() {
		
	}


	/**
	 * Login Method
	 *
	 * @param string	$user	The username of the service
	 * @param string	$pass	The password of the service
	 */
	public function user($user, $pass) {
		// Typecast
		$this->user = (string) $user;
		$this->pass = (string) $pass;
	}


	/**
	 * Upload Method
	 *
	 * @param string	$img	The image path
	 */
	public function upload($img) {
		// Typecast
		$img = (string) $img;

		// Get post data
		$data = $this->postData($img);

		// Start upload
		$raw = $this->post_request($this->url, $data);

		// Return
		return $this->parse($raw);
	}


	/**
	 * Method to send a POST request.
	 *
	 * @param string		$url		The url to send the request to
	 * @param array			$data		An array of data to send via POST
	 */
	protected function post_request($url, $data) {
		// Typecast
		$url = (string) $url;
		$data = (array) $data;

		// Initialize Curl
		$tcurl = curl_init($url);

		// Set Curl Options
		curl_setopt($tcurl, CURLOPT_URL, $url);
		curl_setopt($tcurl, CURLOPT_TIMEOUT, 240);
		curl_setopt($tcurl, CURLOPT_POST, 1);
		curl_setopt($tcurl, CURLOPT_POSTFIELDS, $data);
		curl_setopt($tcurl, CURLOPT_FOLLOWLOCATION, 1);
		// We don't need return headers
		curl_setopt($tcurl, CURLOPT_HEADER, 0);
		// Return the result of our post request
		curl_setopt($tcurl, CURLOPT_RETURNTRANSFER, 1);

		// Execute The Curl Request
		$return_data = curl_exec($tcurl);

		// Check for errors
		if ($return_data === false) {
			// Return
			return false;
		}

		// Return
		return $return_data;
	}

}
?>