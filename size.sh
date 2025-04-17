NOT_ENOUGH=1
ENOUGH=0

#this function prints the size of a given package specifically
#thos dirs in CWD dir
package_size()
{
	local package_dir
	local package_size

	package_dir="${CWD}/$1"
	package_size=$(du -sm $package_dir | awk '{printf $1}')
	printf "${package_size}M\n"
}

get_package_size()
{
	#get the size of a package in bytes using wget and echo it;
	#the function should get the url of the packages
	wget --spider $1 2>&1 | grep -i length | awk '{printf $2}'
}

get_available_storage()
{
	#get the available space on the device to check if there is
	#enough space to install the pacakge
	#B1 for display the output in byte unit
	df -B1 | grep ${HOME} | awk '{printf $4}'
}



enough_storage()
{
	local package_size
	local available_size

	local package_size_mega
	local available_size_Mega

	local needed_size

	package_size=$(get_package_size $1)
	available_size=$(get_available_storage)
	if [[ $package_size -ge $available_size ]]
	then
		package_size_mega=$((package_size / 1024 / 1024))
		available_size_mega=$((available_size / 1024 / 1024))
		needed_size=$(($package_size_mega - $available_size_mega))

		printf "\n${RED}ERROR: ${PURPLE}NO ENOUGH SPACE LEFT ON THE DEVICE\n\tTO INSTALL THE PACKAGE $2\n\n"
		printf "${RED}=>> ${PURPLE}pacakge size:\t${RESET}${RED}${package_size_mega}M"
		printf "\n${GREEN}=>> ${PURPLE}available size:\t${RESET}${GREEN}${available_size_mega}M\n"
		printf "\n${RED}NOTE:\n\t${GREEN}needed size is: ${RED}${needed_size}M\n${RESET}"
		return $NOT_ENOUGH
	else
		return $ENOUGH
	fi
}
