update()
{
	if check_for_update;
	then
		remove_self
		git clone https://github.com/sacrhamza/one /tmp/one
		bash /tmp/one/one init
		rm -rf /tmp/one
	else
		printf "\n${GREEN}everything up to date${RESET}\n"
	fi
}
