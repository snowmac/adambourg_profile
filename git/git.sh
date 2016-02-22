#!/bin/sh

echo 'Entering git cli'

# Copy is default vs config
if [[ $1 == "--config" ]]; then
  echo 'installing config'
  cp ./git/gitconfig ~/
else
  echo 'copying config'
  cp ~/git/.gitconfig ./git
  git commit -a -m 'Updating the git commit';
fi
