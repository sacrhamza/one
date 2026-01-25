get_icon()
{
	local icon_files=$(find . \( -name '*.png' -o -name '*.svg' \) )

	local icon_list=$(for i in ${icon_files}
	do
		if [[ -f $i ]]
		then
			echo $i
		fi
	done)
	icon_file=($(echo "${icon_list}" | grep 512 || echo "${icon_list}" | grep 256 || echo "${icon_list}" | grep 128 || echo "${icon_list}" | grep "$1.svg\$" || echo "${icon_list}"))

	echo "${icon_file}"
}

create_desktop_file()
{
	if [[ ! -d "${ICON_DIR}" ]]
	then
		mkdir "${ICON_DIR}"  
	fi
	local desktop_file="${DESKTOP_FILE_DIR}/$1.desktop"
	local icons="$(find ${CWD}/$1/ -name '*.png')"
	touch "${desktop_file}"
	cd "${CWD}/$1/"
	local variable=$(echo $1 | tr '-' ' ' | awk '{printf $NF}')
	local icon_file=$(get_icon "$variable")
	cp "${icon_file}" "${ICON_DIR}/$1.png"
	cd -

	printf "[Desktop Entry]
Name=$1
Comment=$1
Exec=${CWD}/${1}/${EXEC_FILE[$1]}
Terminal=false
Icon=${ICON_DIR}/$1.png
Type=Application" > "${desktop_file}"
	chmod +x "${desktop_file}"
}
