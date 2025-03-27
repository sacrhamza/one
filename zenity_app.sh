zenity_app()
{
		declare -a installed_app removed_app
		declare -i remove_count=0 install_count=0

		count=0
		for i in ${!APP_URL[@]}
		do
			if [[ -d "${CWD}/$i" ]]
			then
				installed_app[${install_count}]="FALSE $i REMOVE"
				((install_count++))
			else
				removed_app[${remove_count}]="FALSE $i INSTALL"
				((remove_count++))
			fi
		done
		option=$(zenity --window-icon=${ICON_DIR}/oneperson.png --title="one" --width=750 --height=500 --list\
		--checklist \
		--column "Checkbox"  \
		--column "app" \
		--column "INSTALLED/REMOVED" ${installed_app[@]} ${removed_app[@]})
		if [[ -z "${option}" ]]
		then
			zenity --warning --text="you should choose an app"
			exit 1
		fi
		apps=($(echo ${option} | tr '|' ' '))
		for i in ${apps[@]}
		do
			handle_action $i
		done
}
