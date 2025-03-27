handle_path()
{
	local paths=($(echo $PATH | tr ':' ' '))
	local found=0
	for path in ${paths[@]}
	do
		if [[ ${path} == "${BIN_DIR}" ]]
		then
			found=1
			echo 0
		fi
	done
	if [[ $found -eq 0 ]]
	then
		printf '\nPATH="${PATH}:${HOME}/.local/bin"' >> ~/.zshrc
	fi
	echo 1
}

create_man_page()
{
	if [[ ! -f "${HOME}/.local/share/man/man1/one.1" ]]
	then
		mkdir -p "${HOME}/.local/share/man/man1"
		printf '.TH oneperson man 2025/02/02 oneperson manual
.SH oneperson | one
install packages from its sources
.SH SYNOPSIS
.B one
[options] [arguments]
.SH DESCRIPTION
install packages from its sources
.SH OPTIONS
.TP
.B \-I, \-\-init, init
install oneperson package tool locally
.TP
.B \-h, \-\-help, help
Show help message and exit.
.TP
.B \-i, \-\-install, install
install a specific package locally
.TP
.B \-r, \-\-remove, remove
remove a specific package locally
.TP
.B \-s, \-\-search, search
search for a package
.TP
.B \-l, \-\-list, list
list installed packages
.TP
.B \-a, \-\-all, all
list all available packages to install
.TP
.B \-G, \-\-graphical, graphical
use zenity to install or remove packages
.SH EXAMPLES
.TP
.B one help
Show the help message.
.TP
.B one install brave code
install brave-browser and vscode editor
.TP
.B one remove brave code
remove brave-browser and vscode editor
.SH AUTHOR
oneperson onerealperson@icloud.com' > "${HOME}/.local/share/man/man1/one.1"
	echo 1
	
	else
		echo 0
	fi
}

create_if_not_found()
{
	if [[ ! -d "$1" ]]
	then
		mkdir "$1"
	fi
}

create_oneperson_desktop_file()
{
	if [[ ! -f "${ICON_DIR}/oneperson.png" || ! -f "${DESKTOP_FILE_DIR}/oneperson.desktop" ]]
	then
		git clone https://github.com/sacrhamza/oneperson-icon.git /tmp/one
		cp /tmp/one/oneperson.png  "${ICON_DIR}"
		rm -fr /tmp/one
		printf "[Desktop Entry]
Name=One
Comment=Oneperson package tool
Exec=${BIN_DIR}/one -G
Terminal=false
Icon=oneperson
Type=Application
" > "${DESKTOP_FILE_DIR}/oneperson.desktop"
	chmod +x "${DESKTOP_FILE_DIR}/oneperson.desktop" 
	echo 1;
	fi
	echo 0;
}

setup()
{
	local variable
	create_if_not_found "${BIN_DIR}"
	create_if_not_found "${ICON_DIR}"
	if [[ ! -e "${BIN_DIR}/one" ]]
	then
		variable=1
		mv "$1" "${BIN_DIR}/one"
		chmod +x "${BIN_DIR}/one"
	fi
	let variable+=$(handle_path)
	let variable+=$(create_man_page)
	let variable+=$(create_oneperson_desktop_file)
	if [[ $variable -eq 0 ]]
	then
		printf "\n${GREEN}everything up to date${RESET}\n"
	fi
}
