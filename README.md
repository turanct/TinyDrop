# TinyDrop
*An image upload droplet for Mac OSX, written in Applescript and PHP*

![TinyDrop logo](https://raw.github.com/turanct/TinyDrop/master/tinydrop.png)


## How to use?
- Get the TinyDrop app from the [Downloads section](https://github.com/turanct/TinyDrop/downloads) of this repository, or build it yourself.
- Place the app in your Applications folder.
- Drag the app to your dock, to have an icon in the dock.
- Now you can just drag and drop one or more images on the application icon in your dock, to start uploading them to the active image host.
- To change hosts, just run the application and select one.


## How to build?
- Open TinyDrop.scpt in the AppleScript Editor
- Choose `Save as...` from the menu
- Select `Application` as type
- Right click the new 'TinyDrop' Appliciation, and choose 'Show package content'
- Find your way to `Contents > Resources` and paste the contents of this repository there.
- Put the TinyDrop app in your dock and enjoy it!


## How to add plugins?
TinyDrop uses a plugin system to support multiple image hosts. These plugins are just simple php classes to give the TinyDrop system a clue about how to work with certain hosts.

*The plugins must follow these conventions:*

- The filename must be the same as the class name, followed by `.php`. For example if you create a plugin for host `X`, your class will be called `X` and the file will be called `X.php`
- Plugins reside in the `plugins` directory inside the app. `Contents > Resources > plugins`
- Plugins must implement the Plugin interface


# Contributing

Feel free to fork and send pull requests!
