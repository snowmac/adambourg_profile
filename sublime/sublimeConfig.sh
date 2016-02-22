#!/bin/sh

echo "Entering Sublime config script"

# If config, we are installing
if [[ $1 == '--config' ]]; then
  echo "Setting up sublime"

  # If we don't have the subl cli, then lets link it
  if ! which subl > /dev/null; then
    ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
  fi

  # Copy settings
  # cp ./sublime/settings/Package\ Control.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
  # cp ./sublime/settings/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User

  # # Copy Snippets
  cp -R ./sublime/snippets/*.sublime-snippet ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User

  # # Copy packages
  cp -R ./sublime/packages/*.sublime-package ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages\
else # We are backing up
  echo "Backuping up sublime settings"

  # Clear the folders of dups
  rm -rf "sublime/settings"
  rm -rf "sublime/snippets"
  rm -rf "sublime/packages"

  mkdir "sublime/settings"
  mkdir "sublime/snippets"
  mkdir "sublime/packages"

  # Copy Preferences
  cp ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings ./sublime/settings
  cp ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Package\ Control.sublime-settings ./sublime/settings

  # Copy Snippets
  find ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/ -name "*.sublime-snippet" -type f -exec cp {} ./sublime/snippets \;

  # Copy installed packages
  cp -R ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages/*.sublime-package ./sublime/packages

  git add .
  git commit -m 'Adding the sublime configurations'
fi

