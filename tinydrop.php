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
				$this->notify(str_replace(" ", "\ ", basename($this->arguments->data)).' is not an image. File not uploaded.');

				// Return
				return false;
			}

			// Check host
			if (in_array($this->settings->host, $this->plugins)) {
				// Include plugin base
				require_once(dirname(__FILE__).'/TDPlugin.php');

				// Include plugin
				require_once(dirname(__FILE__).'/plugins/'.$this->settings->host.'.tdpi.php');

				// Initiate
				$host = new $this->settings->host;

				// Use userdata
				$host->user($this->settings->user, $this->settings->pass);

				// Get Url
				$url = $host->upload($this->arguments->data);

				// Send notification
				$this->notify('Uploaded '.str_replace(' ', '\ ', basename($this->arguments->data)));

				// Output
				echo $url;

				// Add to paste buffer
				passthru('echo "' . $url . '" | pbcopy');

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
	 * @param string	The message for the notification
	 */
	private function notify($message = '') {
		// Typecast
		$type = (int) $type;
		$message = (string) $message;

		// Should we send notifications?
		if ($this->settings->notifications === true) {
			// Include notifications
			require_once(dirname(__FILE__).'/NotifyToons.php');

			// Notify
			$nt = new NotifyToons('TinyDrop', $message, dirname(__FILE__).'/tinydrop.png');
		}
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
