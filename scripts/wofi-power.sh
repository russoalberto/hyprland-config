#!/bin/bash

entries="Logout\nSuspend\nReboot\nShutdown"

selected=$(echo -e $entries|wofi --width 250 --height 230 --dmenu --cache-file /dev/null | awk '{print tolower($1)}')

case $selected in
  logout)
    exec hyprctl dispatch exit;;
  suspend)
    exec systemctl suspend;;
  reboot)
    exec systemctl reboot;;
  shutdown)
    exec systemctl poweroff -i;;
esac
