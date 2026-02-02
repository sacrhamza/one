create_man_page()
{
	if [[ ! -f "${HOME}/.local/share/man/man1/one.1" ]]
	then
		printf '.TH oneperson man 2025/04/23 oneperson manual
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
.B \-U, \-\-update, update
update one package tool
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
oneperson onerealperson@icloud.com' > "${MAN_DIR}/one.1"
	fi
}
