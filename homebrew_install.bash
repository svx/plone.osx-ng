#!/bin/bash
 # First we have the list of items

# we want an error function


# ok happy we will check now for xcode-commandline tools
# if not installed we will install them


# note: do we want to checl if stuff is installed via bash or via apple script?

# Here we will install homebrew
# ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

BREWPACKS=(dialog wget python git)

 # Second we will loop through the list and echo item
for i in ${BREWPACKS[@]}
 do
    echo $i
done

# Here we will check if we have installed or if we need something to insttall
