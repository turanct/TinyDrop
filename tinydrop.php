<?php
/**
 * Toon's TinyDrop Library
 */
class TinyDrop {
	// --------------------------------------------------------- Variables ---------------------------------------------------------
	/**
	 * @var string	Path to the settings file
	 */
	private $settingsFile;

	/**
	 * @var object	Settings
	 */
	private $settings;

	/**
	 * @var object	Arguments
	 */
	private $arguments;

	/**
	 * @var array	Plugins
	 */
	private $plugins;



	// ---------------------------------------------------------- Methods ----------------------------------------------------------
	/**
	 * Constructor Method
	 */
	public function __construct($settingsFile, $arguments) {
		// Typecast
		$this->settingsFile = (string) $settingsFile;
		$this->arguments = (object) $arguments;

		// Read settings
		$this->getSettings();

		// Get plugins
		$this->getPlugins();

		// Interpret
		$this->interpret();
	}


	/**
	 * Method to interpret the arguments
	 */
	private function interpret() {
		// Setup
		if ($this->arguments->do == '1') {
			// Raw settings
			$settings = explode('PARSE',$this->arguments->data);

			// Add to settings
			$this->settings->host = (in_array($settings[0], $this->plugins)) ? $settings[0] : $this->plugins[0];
			$this->settings->user = $settings[1];
			$this->settings->pass = $settings[2];

			// Save
			$this->setSettings();
		}

		// Plugins
		elseif ($this->arguments->do == '2') {
			// Output the plugins
			echo implode('PARSE', $this->plugins);
		}

		// Upload
		else {
			// Check image
			if ($this->isImage($this->arguments->data) === false) {
				// Send notification
				$this->notify('2', str_replace(" ", "\ ", basename($this->arguments->data)));

				// Return
				return false;
			}

			// Check host
			if (in_array($this->settings->host, $this->plugins)) {
				// Include
				require_once(dirname(__FILE__).'/plugins/'.$this->settings->host.'.tdpi.php');

				// Initiate
				$host = new $this->settings->host;

				// Use userdata
				$host->user($this->settings->user, $this->settings->pass);

				// Get Url
				$url = $host->upload($this->arguments->data);

				// Send notification
				$this->notify('1', str_replace(' ', '\ ', basename($this->arguments->data)));

				// Output
				echo $url;

				// Return
				return true;
			}

			// Host doesn't exist
			else {
				echo "http://plugin.doesnt.exist";
				return false;
			}
		}
	}


	/**
	 * Method to get a list of available plugins
	 */
	private function getPlugins() {
		// Prepare array
		$this->plugins = array();
		
		// Open the dir
		if ($handle = opendir(dirname(__FILE__).'/plugins/')) {
			// Walk through files
			while (false !== ($file = readdir($handle))) {
				// Check check for plugin files.
				if (substr($file, -9) == '.tdpi.php') {
					$this->plugins[] = substr($file, 0, -9);
				}
			}
		}

		// Return
		return $this->plugins;
	}


	/**
	 * Method to read the settings file
	 */
	private function getSettings() {
		// Get settings
		$this->settings = (object) @json_decode(@file_get_contents($this->settingsFile));

		// Return
		return $this->settings;
	}


	/**
	 * Method to write the settings file
	 */
	private function setSettings() {
		// Write to file
		@file_put_contents($this->settingsFile, @json_encode($this->settings));
	}


	/**
	 * Method to check if the given file is an image
	 */
	private function isImage($img) {
		// Get image pathinfo
		$pathinfo = pathinfo($img);
		$ext = strtolower($pathinfo['extension']);

		// Check
		return in_array($ext, array('jpg', 'jpeg', 'gif', 'png', 'tif', 'tiff', 'psd', 'ico'));
	}


	/**
	 * Method to show notifications
	 *
	 * @param int		The type of notification
	 * @param string	The message for the notification
	 */
	private function notify($type, $message = '') {
		// Typecast
		$type = (int) $type;
		$message = (string) $message;

		// Should we send notifications?
		if ($this->settings->notifications === true) {
			// Create the command
			$cmd = 'osascript '.dirname(__FILE__).'/Scripts/GrowlNotify.scpt '.$type;

			// Add message if necessary
			if (!empty($message)) {
				$cmd .= ' '.$message;
			}

			// Execute the Applescript
			exec($cmd);
		}
	}
}


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
	public function post_request($url, $data) {
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



// Run the script if we're not included by another php file
if (basename(__FILE__) == basename($_SERVER['PHP_SELF'])) {
	// Get settings file name
	$settingsFile = dirname(__FILE__).'/settings.json';

	// Create arguments
	$arguments = new stdClass();
	$arguments->do = $argv[1];
	$arguments->data = (isset($argv[2]) && !empty($argv[2])) ? $argv[2] : false ;

	// Create TinyDrop instance
	$td = new TinyDrop($settingsFile, $arguments);
}
?>