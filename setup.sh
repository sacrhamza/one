create_dirs()
{
  for directory in "$@"
  do
    [[ ! -d "$directory" ]] && mkdir -p "$directory"
  done
}

local_setup()
{
  create_dirs "$BIN_DIR" "$DESKTOP_FILE_DIR"\
    "$ICON_DIR" "$MAN_DIR"
}
