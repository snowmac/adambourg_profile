#!/bin/sh

# Clear the folders of dups
rm -rf "settings"
rm -rf "snippets"
rm -rf "packages"

mkdir "settings"
mkdir "snippets"
mkdir "packages"

# Copy Preferences
cp ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings ./settings
cp ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Package\ Control.sublime-settings ./settings

# Copy Snippets
find ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/ -name "*.sublime-snippet" -type f -exec cp {} ./snippets \;

# Copy installed packages
cp -R ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages/*.sublime-package ./packages

