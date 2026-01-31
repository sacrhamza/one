get_format()
{
  local format
	local place="$1"
  local output_format

	output_format=$(file "${place}")

  if echo -n "$output_format" | grep -q Debian; then format='deb';
  elif echo -n "$output_format" | grep -q XZ; then format='tar.xz';
  elif echo -n "$output_format" | grep -q bzip2; then format='tar.bz2'
  elif echo -n "$output_format" | grep -q gzip; then format='gzip';
  elif echo -n "$output_format" | grep -q Zip;then format='zip';
  elif echo -n "$output_format" | grep -q ELF; then format='elf';
	else
		rm -rf "${place}"
		rm -rf "${CWD}/TMP"
		printf "${RED}unknown format %s\n" "${output_format}"
		exit 1
	fi
	printf "%s" "$format"
}

run_spinner()
{
 # local command="$@" 
  local spinstr=(⣾ ⣽ ⣻ ⢿ ⡿ ⣟ ⣯ ⣷)

 "$@" &

 local pid="$!"

  while kill -0 "$pid" 2> /dev/null
  do
   for i in "${spinstr[@]}"
   do 
     echo -en "${i}\b";
     sleep 0.2
   done
  done
}

run_and_print()
{
  echo -n "$@"
  "$@"
}

download_pkg()
{
  local pkg_name="$1"
  local pkg_file="$2"
  local pkg_format="$3"
  local app_name="${TEMP_DIR}/${pkg_name}"

  printf "${GREEN}[unpackage] ${RESET}\t%s\n" "${pkg_file}"
  printf "${GREEN}[run] ${RESET}\t"

	case "$pkg_format" in
		'deb')
      run_spinner run_and_print dpkg -x "$pkg_file" "${app_name}" ;;
		'tar.xz' | 'tar.bz2' | 'gzip')
			run_spinner run_and_print tar -xf "$pkg_file" --directory="${TEMP_DIR}" ;;
		'zip')
			run_spinner run_and_print unzip "$pkg_file" -d "${TEMP_DIR}" ;;
		'elf')
			chmod +x "${pkg_file}"  
			cd ${TEMP_DIR} && ${TEMP_DIR}/${app_name}.elf --appimage-extract && cd -
			mv "${TEMP_DIR}/squashfs-root" "${CWD}/TMP/${app_name}" ;;
		*) ;;
	esac
}

create_app_symlink()
{
  local pkg_name="$1"

	[[ ! -e "${BIN_DIR}/${pkg_name}" ]] &&
    ln -s "${CWD}/${pkg_name}/${EXEC_FILE[$pkg_name]}" "${BIN_DIR}/${pkg_name}"
}

log_output()
{
  printf "${GREEN}[$1]${RESET} $2\n"
}

save_app_data()
{
  local pkg_name="$1"
  echo "${pkg_name} ${CWD} ${APP_URL[${pkg_name}]}"
}



download()
{
  local_setup
	local pkg_name="$1"

  local pkg_file="${TEMP_DIR}/${pkg_name}"

  echo -e "${GREEN}app_url${RESET}: ${APP_URL[$pkg_name]}"

	wget -O "$pkg_file" "${APP_URL[$pkg_name]}" -q --show-progress

	local pkg_format=$(get_format "$pkg_file")

  mv "${pkg_file}"  "${pkg_file}.${pkg_format}"

  pkg_file+=".${pkg_format}"

  echo -e "${GREEN}app format: ${RESET} ${pkg_format}"

  download_pkg "$pkg_name" "$pkg_file" "$pkg_format" 

  log_output "remove" "package file ${pkg_file}"

  rm -rf "$pkg_file"
  # rm -rf "/tmp/$pkg_name"

  create_app_symlink "${pkg_name}"

  mv "${TEMP_DIR}/${pkg_name}" "${CWD}/"

	local i

	for i in "${not_graghical_packages[@]}"
	do
		if [[ "${1}" == "$i" ]]
		then
			return
		fi
	done

	create_desktop_file "$pkg_name"
  save_app_data "$pkg_name"
}
