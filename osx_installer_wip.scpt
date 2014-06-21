-- todo: catch errors and write them to a file: http://macstuff.beachdogs.org/blog/?p=28
-- http://macscripter.net/viewtopic.php?id=28623-- welcome message
-- todo: add custom plone image
display dialog "Welcome to the Installer for Plone on OSX
For any help please check the documentation on docs.plone.org
The installer relies on homebrew to install all needed requirements

First we will check for needed dependencies"

-- check for dependencies [homebrew and osx command line tools]
-- we need to rewrite that later into a better way
-- user chan choose install or not, if not stop with error messeage go and install vagrant

tell application "Finder"
	if exists POSIX file "/usr/local/bin/brew" then
		display dialog "Looks like we have Homebrew"
	else
		display dialog "We are missing Homebrew, do you want to install ?" buttons {"Yes", "No"} default button 1
		-- Yes
		if result = {button returned:"Yes"} then
			display dialog "Great we will install now"
			-- No
		else if result = {button returned:"No"} then
			display dialog "Please use Vagrant"
		end if
	end if

end tell
tell application "Finder"
	if exists POSIX file "/Library/Developer/CommandLineTools/" then
		display dialog "Looks like we have Command Line Tools"
	else
		display dialog "We are missing Comand Line Tools, dou you want to install?"
	end if
end tell

-- install dependcies via homebrew
-- this will change to brew install $homebrewPackages
-- make sure to follow: http://hackercodex.com/guide/python-development-environment-on-mac-osx/
set homebrewPackages to {"git", "wget", "python", "readline", "openssl", "pillow"}
repeat with theItem in homebrewPackages
	display dialog theItem
end repeat
-- we do need: dialog, git, compilers, python2.7
-- download ui installer
-- open terminal and run installer
