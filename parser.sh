#!/bin/bash
source ./hey.sh

declare -A operation=(
  ['download']='download_packages'
  ['remove']='remove_package'
  ['version']='get_version'
  ['search']='search'
  ['help']='display_help_message'
  ['list']='list'
  ['undefined']='undefined'
)

check_pkg_exist()
{
  local pkg_name="$1"

  if [[ -n "${APP_URL[${pkg_name}]}" ]]
  then
    return 0
  else
    return 1
  fi
}

pkg_installed()
{
  local pkg_name

  pkg_name="$1"
  return 0
}

download_packages()
{
  declare -a pkgs_to_install

  for pkg in "$@"
  do
    if check_pkg_exist "$pkg"
    then
      pkg_installed "$pkg" && pkgs_to_install+=("$pkg")
    else
      exit 44
    fi
  done

  for pkg in "${pkgs_to_install[@]}"
  do
    echo "$pkg"
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
  args=("$@")
  if [[ "$#" -lt 1 ]]
  then
    printf hey
    exit 0
  fi
  action=$(get_action "$1")
  "${operation[${action}]}" "${args[@]:1:$#}"
}

main "$@"
