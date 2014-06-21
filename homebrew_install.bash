#!/bin/bash

# we want an error function


# ok happy we will check now for xcode-commandline tools
# if not installed we will install them


#
# Check if Homebrew is installed
#
which -s brew
if [[ $? != 0 ]] ; then
# Install Homebrew
# https://github.com/mxcl/homebrew/wiki/installation
/usr/bin/ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew doctor
else
brew update
fi

BREWPACKS=(dialog wget python git)

 # Second we will loop through the list and echo item
for i in ${BREWPACKS[@]}
 do
    echo $i
done

# Here we will check if we have installed or if we need something to insttall

