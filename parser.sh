#!/bin/bash

declare -A operation=(
	['download']='download_package'
	['remove']='download_package'
	['version']='get_version'
	['search']='search'
	['help']='display_help_message'
	['list']='list'
)
download_package()
{
	echo somethign
}

take_action()
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
			echo delete ;;
		search | '--search' | '-s')
			echo search ;;
		*)
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
	action=$(take_action "$1")
	"${operation[${action}]}"
	# for args in "$@"		
	# do 
	# 	printf "%s\n" "$args"
	# done
}

main "$@"
