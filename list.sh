#!/bin/bash

list_installed_pkgs()
{
  declare -a args=("$@")
  declare -i args_len="$#"

  if [[ $args_len -gt 0 ]]
  then
    echo "list does not take any arg"
    echo "option ${args[0]}"
    exit 44
  fi
  # logic of listing packages goes here
}

