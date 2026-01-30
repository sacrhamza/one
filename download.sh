get_format()
{
  local format
	local place="$1"

  { [[ -n $(file "${place}" | grep Debian) ]] && format='deb'; } ||
  { [[ -n $(file "${place}" | grep XZ) ]] && format='tar.xz'; } ||
  { [[ -n $(file "${place}" | grep bzip2) ]] && format='tar.bz2'; } ||
  { [[ -n $(file "${place}" | grep gzip) ]] && format='gzip'; } ||
  { [[ -n $(file "${place}" | grep Zip) ]] && format='zip'; } ||
  { [[ -n $(file "${place}" | grep ELF) ]] && format='elf'; } ||
  {
		rm -rf "${place}"
		rm -rf "${CWD}/TMP"
		printf "${RED}unknown format $(file ${place})\n"
		exit 1
  }
	printf "$format"
}

run_and_print()
{
  echo "$@"
  "$@"
}

download_pkg()
{
  local pkg_name="$1"
  local pkg_file="$2"
  local pkg_format="$3"
  local app_name="${TEMP_DIR}/${pkg_name}"

  printf "${GREEN}[unpackage] ${RESET}\t${pkg_file}${RESET}\n"
  printf "${GREEN}[run] ${RESET}\t"

	case "$pkg_format" in
		'deb')
      run_and_print dpkg -x "$pkg_file" "${app_name}" ;;
		'tar.xz' | 'tar.bz2' | 'gzip')
			run_and_print tar -xf "$pkg_file" --directory="${TEMP_DIR}" ;;
		'zip')
			run_and_print unzip "$pkg_file" -d "${TEMP_DIR}" ;;
		'elf')
			chmod +x "${TEMP_DIR}/${app_name}.elf"  
			cd ${TEMP_DIR} && ${TEMP_DIR}/${app_name}.elf --appimage-extract && cd -
			mv "${TEMP_DIR}/squashfs-root" "${CWD}/TMP/${app_name}" ;;
		*) ;;
	esac
}


download()
{
	local pkg_name="$1"

  local pkg_file="${TEMP_DIR}/${pkg_name}"

  printf "${GREEN}app_url${RESET}: ${APP_URL[$pkg_name]}\n"

	wget -O "$pkg_file" "${APP_URL[$pkg_name]}" -q --show-progress

	local pkg_format=$(get_format "$pkg_file")

  mv "${pkg_file}"  "${pkg_file}.${pkg_format}"

  pkg_file+=".${pkg_format}"

  printf "${GREEN}app format: ${RESET} ${pkg_format}\n"

  download_pkg "$pkg_name" "$pkg_file" "$pkg_format" 

  rm -rf "$pkg_file"

	# if [[ ! -d "${BIN_DIR}" ]]
	# then
	# 	mkdir "${BIN_DIR}"
	# fi

	# ln -s "${CWD}/$1/${EXEC_FILE[$1]}" "${BIN_DIR}/${1}"
	# local i
	# for i in "${not_graghical_packages[@]}"
	# do
	# 	if [[ ${1} == $i ]]
	# 	then
	# 		return
	# 	fi
	# done

	# create_desktop_file "$pkg_name"
}
