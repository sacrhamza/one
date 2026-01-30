get_format()
{
  local format
	local place="$1"
  local output_format=$(file "${place}")

  { [[ -n $(printf "$output_format" | grep Debian) ]] && format='deb'; } ||
  { [[ -n $(printf "$output_format" | grep XZ) ]] && format='tar.xz'; } ||
  { [[ -n $(printf "$output_format" | grep bzip2) ]] && format='tar.bz2'; } ||
  { [[ -n $(printf "$output_format" | grep gzip) ]] && format='gzip'; } ||
  { [[ -n $(printf "$output_format" | grep Zip) ]] && format='zip'; } ||
  { [[ -n $(printf "$output_format" | grep ELF) ]] && format='elf'; } ||
  {
		rm -rf "${place}"
		rm -rf "${CWD}/TMP"
		printf "${RED}unknown format $(file ${place})\n"
		exit 1
  }
	printf "$format"
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
     printf "${i}\b";
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

  printf "${GREEN}[unpackage] ${RESET}\t${pkg_file}${RESET}\n"
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
	local pkg_name="$1"

  local pkg_file="${TEMP_DIR}/${pkg_name}"

  printf "${GREEN}app_url${RESET}: ${APP_URL[$pkg_name]}\n"

	wget -O "$pkg_file" "${APP_URL[$pkg_name]}" -q --show-progress

	local pkg_format=$(get_format "$pkg_file")

  mv "${pkg_file}"  "${pkg_file}.${pkg_format}"

  pkg_file+=".${pkg_format}"

  printf "${GREEN}app format: ${RESET} ${pkg_format}\n"

  download_pkg "$pkg_name" "$pkg_file" "$pkg_format" 

  log_output "remove" "package file ${pkg_file}"

  rm -rf "$pkg_file"
  # rm -rf "/tmp/$pkg_name"

  create_app_symlink "${pkg_name}"

  mv "/${TEMP_DIR}/${pkg_name}" "${CWD}/"

	local i

	for i in "${not_graghical_packages[@]}"
	do
		if [[ ${1} == $i ]]
		then
			return
		fi
	done

	create_desktop_file "$pkg_name"
  save_app_data "$pkg_name"
}
