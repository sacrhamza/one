search_package()
{
	local app
	local len
	local arg_len=0
	for app in  ${!APP_URL[@]}
	do
		#len=$(printf "$1" | wc -c)
		len=${#1}	
		if [[ ${app:0:${len}} == $1 ]]
		then
			let arg_len+=1
			printf "${GREEN_BOLD}${app^}${RESET}:\n\t${DESCRIPTION[$app]}\n"
		fi
	done
	if [[ $arg_len -eq 0 ]]
	then
		printf "${RED_BOLD}${1^}${RESET}:\n\tno such program\n"
	fi
}
