display_help_message()
{
	printf "${BLUE}oneaperson package tool:${RESET}  ${GREEN}one [OPTION] [PACKAGE?]
\t${RESET}${GREEN}init, --init, -I${RESET}\tinstall oneperson package tool locally
\t${RESET}${GREEN}install, --install, -i${RESET}\tinstall a package
\t${GREEN}remove, --remove, -r${RESET}\tremove a package
\t${GREEN}search, --search, -s${RESET}\tsearch for a package
\t${GREEN}update, --update, -U${RESET}\tupdate one package tool
\t${GREEN}list, --list, -l${RESET}\tlist the installed packages
\t${GREEN}all, --all, -a${RESET}\t\tlist all available packages to install
\t${GREEN}version, --version, -v${RESET}\tdisplay oneperson package tool version
\t${GREEN}help, --help, -h${RESET}\tdisplay this help message
\t${GREEN}graphic, --graphic, -G${RESET}\tuse zenity to install/remove packages
"
}
