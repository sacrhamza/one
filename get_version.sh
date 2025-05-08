get_version()
{
	local  program_version remote_version

	#Get one program version
	program_version=$(cat ${HOME}/.local/bin/.version)
	#Get the newest version of one for github
	#the file has this format: version
	latest_version=$(curl https://raw.githubusercontent.com/sacrhamza/one-package-tool/main/.version 2> /dev/null)

	printf "${PURPLE}One Version: "

	#Ceck if one version is the newset one or not
	#if not: recommend command to update the tool
	if [[ "$program_version" != "$latest_version" ]]
	then
		printf "${RED}${program_version}\n"
		printf "${PURPLE}One Latest Version ${GREEN}$latest_version\n"
		printf "${GREEN}there is an update, you can update one using: ${PURPLE}one --update-self${RESET}"
	else
		printf "${GREEN}${program_version}\n"
	fi
}
