
get_version()
{
	if check_update;
	then
		echo -e "${BLUE}there is un update you can update one using: one --update-self"
  else
	  echo -e "${BLUE}oneperson tool: ${GREEN_BOLD}v0.0.5${RESET}"
	fi
}

check_update()
{
  local current_version

	current_version=$(curl https://raw.githubusercontent.com/sacrhamza/one/main/.version 2> /dev/null)
	if [[ "$PROGRAM_VERSION" != "$current_version" ]]
	then
		true
	else
		false
	fi
}
