#!/bin/sh

# If we don't have the subl cli, then lets link it
if ! which subl > /dev/null; then
  ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
fi

# Copy settings
cp ./settings/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
cp ./settings/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User

# Copy Snippets
cp -R ./snippets/*.sublime-snippet ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User

# Copy packages
cp -R ./packages/*.sublime-package ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages\

