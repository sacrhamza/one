delete_package()
{	
	if [[ ! -d "${CWD}/${1}" ]]
	then
		printf "\n${RED}${1} is not installed\n${RESET}but you can install it using: ${GREEN}one -i ${1}${RESET}\n"
		return 0
	fi
	if [[ -z $2 ]]
	then
		read -p "are you sure you want to remove $1 [y/n]: " answer
	else
		answer=yes
	fi
	if [[ "${answer,,}" == @(yes|y) ]]
	then
		remove_file "${BIN_DIR}/$1"
		remove_dir "${CWD}/$1"
		remove_dir "${HOME}/.config/$1"
		remove_dir "${HOME}/.cache/$1"
		remove_dir "${HOME}/.${1}"
		remove_file "${DESKTOP_FILE_DIR}/$1.desktop"
		remove_file "${ICON_DIR}/$1.png"
		#zenity --notification --window-icon="info" --text="$i is removed" --title="one"
		notify-send -i "/home/hsacr/COMMON_CORE/one-app/build/assets/logos/$i.png" "one notification" "$i is removed"
	fi
}
