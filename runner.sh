#!/bin/sh

# use this file to run all the things

# Fire each one passing in args *
./sublime/sublimeConfig.sh $*
./git/git.sh $*


if [[ $1 != "--config" ]]; then
  git push origin master
fi
