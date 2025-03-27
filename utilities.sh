remove_dir()
{
	if [ -d $1 ]
	then
		rm -rfv $1
	fi
}

remove_file()
{
	if [ -e "$1" ]
	then
		rm -rfv "$1"
	fi
}
