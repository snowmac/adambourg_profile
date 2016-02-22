#!/bin/sh

# use this file to run all the things

# Fire each one passing in args *
./sublime/sublimeConfig.sh $*
./git/git.sh $*

git push origin master
