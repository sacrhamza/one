download()
{
	echo "download $1"
	local app_name="$1"
	if [[ -d "${CWD}/${app_name}" ]]
	then
		printf "\n${BLUE}$i ${RED}is installed\n${RESET}\n"
		return 0
	fi
	mkdir "${CWD}/TMP"
	local format
	local place="${TEMP_DIR}/${app_name}"
	wget -O "${TEMP_DIR}/${app_name}" ${APP_URL[$1]}
	if [[ -n $(file "${place}" | grep Debian) ]]
	then
		format='deb'
	elif [[ -n $(file "${place}" | grep XZ) ]]
	then
		format='tar.xz'
	elif [[ -n $(file "${place}" | grep bzip2) ]]
	then
		format='tar.bz2'
	elif [[ -n $(file "${place}" | grep gzip) ]]
	then
		format='gzip'
	elif [[ -n $(file "${place}" | grep Zip) ]]
	then
		format='zip'
	elif [[ -n $(file "${place}" | grep ELF) ]]
	then
		format='elf'
	else
		rm -rf "${place}"
		rm -rf "${CWD}/TMP"
		printf "${RED}unknown format $(file ${place})\n"
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
		if [[ ${1} == $i ]]
		then
			return
		fi
	done
	create_desktop_file $1
}
