<?php
//***********************************************************
// Toon's Notification Library
//***********************************************************

/** * NotifyToons Library
 *
 * NotifyToons is a simple one-file PHP Library, which enables
 * you to easily notify users of php scripts through Growl (OSX)
 * or Notify-send (GNU/Linux).
 *
 * @package	NotifyToons
 * @version	0.0.1
 * * @author	Toon Daelman <http://turanct.wordpress.com> * @copyright	2011 Toon Daelman
 *
 * @license	GNU General Public License
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */




class NotifyToons {

	// Variables ----------------------------
	private $os;
	private $title;
	private $message;
	private $image;


	// Functions ----------------------------
	// Constructor
	public function __construct($title, $message, $image) {
		// Typecast
		$this->title = (string) $title;
		$this->message = (string) $message;
		$this->image = (string) $image;

		// Init
		$this->init();
	}


	// Init
	public function init() {
		// Determine OS
		$this->get_os();

		// Notify
		$this->notify();
	}


	// Determine Operating System
	public function get_os() {
		// Run command
		$this->os = @exec('uname');

		// Return
		return $this->os;
	}


	// Notify
	public function notify() {
		// Mac OSX
		if ($this->os == 'Darwin') {
			@exec('osascript '.dirname(__FILE__).'/GrowlNotify.scpt "'.$this->title.'" "'.$this->message.'" "'.$this->image.'"');
		}
		elseif ($this->os == 'Linux') {
			@exec('notify-send "'.$this->title.'" "'.$this->message.'" -i '.$this->image);
		}
	}
}




// Run the class if we're not included
if (basename(__FILE__) == basename($_SERVER['PHP_SELF'])) {
	// Create new instance
	$nt = new NotifyToons('Test', 'Dit is een test.', dirname(__FILE__).'/Avatars/tinydroptest2.png');
}
?>
