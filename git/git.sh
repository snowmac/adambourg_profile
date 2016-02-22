#!/bin/sh

echo 'Entering git cli'

# Copy is default vs config
if [[ $1 == "--config" ]]; then
  echo 'installing config'
  cp .gitconfig ~/
else
  echo 'copying config'
  cp ~/.gitconfig .
  git commit -a -m 'Updating the git commit';
fi
