#!/bin/bash
# get the path of the script directory
script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# define the alias command to add to .bashrc
alias glue=". $script_dir/glue.sh"

# check if the alias is already defined in .bashrc
if grep -q "alias glue='. $script_dir/glue.sh'" ~/.bashrc; then
  echo "Alias already exists in .bashrc"
else
  # add the alias command to .bashrc
  echo "alias glue='. $script_dir/glue.sh'" >> ~/.bashrc
  echo "Alias added to .bashrc"
  echo "reload .bashrc to use the alias"
  . ~/.bashrc
fi
