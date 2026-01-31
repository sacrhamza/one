#!/bin/bash

declare -A operation=(
  ['download']='download'
  ['remove']='remove_package'
  ['version']='get_version'
  ['search']='search'
  ['help']='display_help_message'
  ['list']='list'
  ['undefined']='undefined'
)

download_packages()
{
  declare -a pkgs_to_install
  
    for pkg in "$@"
    do
      if check_pkg_exist "$pkg"
      then
        pkgs_to_install+=("$pkg")
      fi
    done

    for pkg in "${pkgs_to_install[@]}"
    do
      download "$pkg"
    done
}

get_action()
{
  option="$1"

  case "${option}" in
    list | '--list' | '-l')
      printf 'list' ;;
    all | '--all' | '-a')
      echo all ;;
    graphic | '--graphic' | '-G')
      echo graphic ;;
    init | '--init' | '-I')
      echo init ;;
    version | '--version' | '-v')
      echo version ;;
    update | '--update' | '-U')
      echo update ;;
    help | '--help' | '-h')
      # display_help_message
      # return 2
      ;;
    install | '--install' | '-i')
      echo download ;;
    remove | '--remove' | '-r')
      echo remove;;
    search | '--search' | '-s')
      echo search ;;
    *) echo 'undefined'
      ;;
  esac
}

main()
{
  if [[ "$#" -lt 1 ]]
  then
    printf hey
    exit 0
  fi
  action=$(get_action "$1")
  echo "$action"
  echo "${operation[${action}]}"
download_packages 'brave' 'something'
}

main "$@"
