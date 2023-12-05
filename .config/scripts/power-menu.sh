#!/bin/bash

choices="󰤄 Suspend\n󰜉 Reboot\n󰐥 Shutdown"

choice=$(echo -e $choices | fuzzel --dmenu --lines=3 | awk '{print tolower($2)}' )

case $choice in
  suspend)
    exec systemctl suspend;;
  reboot)
    exec systemctl reboot;;
  shutdown)
    exec systemctl poweroff -i;;
esac
