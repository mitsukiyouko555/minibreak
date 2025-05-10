#!/bin/bash

START_SCRIPT="cd ~/.local/bin && ./minibreak.sh"

RUN_SCRIPT="$START_SCRIPT; exit"

osascript -e 'tell application "Terminal"
  activate
  do script "'"$RUN_SCRIPT"'"
end tell'

exit 0
