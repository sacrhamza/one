create_one_desktop_file()
{
	if [[ ! -f "${DESKTOP_FILE_DIR}/oneperson.desktop" ]]
	then
		echo "[Desktop Entry]
Name=One
Comment=Oneperson package tool
Exec=${BIN_DIR}/one -G
Terminal=false
Icon=oneperson
Type=Application
" > "${DESKTOP_FILE_DIR}/oneperson.desktop"
	chmod +x "${DESKTOP_FILE_DIR}/oneperson.desktop" 
	fi

  if [[ ! -f "${ICON_DIR}/oneperson.png" ]]
  then
		cp "${ONE_DIR}/oneperson.png"  "${ICON_DIR}"
  fi
}
