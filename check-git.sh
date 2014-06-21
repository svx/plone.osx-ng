#!/bin/bash

source utils.sh

e_header "I am a sample script"

# Check for Git
if type_exists 'git'; then
  e_success "Git good to go"
else
  e_error "Git should be installed. It isn't. Aborting."
  exit 1
fi

if is_os "darwin"; then
  e_success "You are on a mac"
else
  e_error "You are not on a mac"
  exit 1
fi
