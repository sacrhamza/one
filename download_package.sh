download_package()
{
	local app_name="$1"
	mkdir "${CWD}/TMP"
	local format
	local place="${TEMP_DIR}/${app_name}"
	wget -O "${TEMP_DIR}/${app_name}" "${APP_URL[$1]}"
	if file "${place}" | grep 'Debian' -q;
	then
		format='deb'
	elif file "${place}" | grep 'XZ' -q;
	then
		format='tar.xz'
	elif file "${place}" | grep 'XZ' -q;
	then
		format='tar.bz2'
	elif file "${place}" | grep 'gzip' -q;
	then
		format='gzip'
	elif file "${place}" | grep 'Zip' -q;
	then
		format='zip'
	elif file "${place}" | grep 'ELF' -q;
	then
		format='elf'
	else
		rm -rf "${CWD}/TMP"
		printf "${RED}unknown format $(file ${place})\n"
		rm -rf "${place}"
		exit 1
	fi
	mv "${TEMP_DIR}/${1}" "${TEMP_DIR}/${1}.${format}"	
	case $format in
		'deb')
			dpkg -x "${TEMP_DIR}/${app_name}.deb" "${CWD}/TMP/${app_name}"
			;;
		'tar.xz' | 'tar.bz2' | 'gzip')
			tar -xf "${TEMP_DIR}/${app_name}.${format}" --directory="$CWD/TMP"
;;
		'zip')
			unzip "${TEMP_DIR}/${app_name}.zip" -d "${CWD}/TMP"
			;;
		'elf')
			chmod +x "${TEMP_DIR}/${app_name}.elf"  
			cd ${TEMP_DIR} && ${TEMP_DIR}/${app_name}.elf --appimage-extract && cd -
			mv "${TEMP_DIR}/squashfs-root" "${CWD}/TMP/${app_name}"
			;;
		*);;
	esac
	mv "${CWD}"/TMP/* "${CWD}/${app_name}"
	rm -r "${CWD}/TMP/"
	rm -rf "${TEMP_DIR}/${app_name}.${format}"
	if [[ ! -d "${BIN_DIR}" ]]
	then
		mkdir "${BIN_DIR}"
	fi
	ln -s "${CWD}/$1/${EXEC_FILE[$1]}" "${BIN_DIR}/${1}"
	local i
	for i in "${not_graghical_packages[@]}"
	do
		if [[ "$1" == "$i" ]]
		then
			return
		fi
	done
	create_desktop_file "$1"
}
