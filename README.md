# TinyDrop
*An image upload droplet for Mac OSX, written in Applescript and PHP*


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

- The filename must be the same as the class name, followed by `.tdpi.php`. For example if you create a plugin for host `X`, your class will be called `X` and the file will be called `X.tdpi.php`
- Plugins reside in the `plugins` directory inside the app. `Contents > Resources > plugins`
- Plugins must extend the TDPlugin class, to inherit basic functionality

*There are three obligated methods for plugins*

1. `__construct` in which you set the `url` class property to the (api) POST url.
2. `postData` returning an array of post variables for our (api) call. We call this method with one argument, the path of the image we want to upload.
3. `parse` returning the url of the uploaded image. We call this method with one argument, the plain response of the (api) call.
