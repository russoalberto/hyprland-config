#!/bin/bash

entries="Suspend\nReboot\nShutdown"

selected=$(echo -e $entries|wofi --width 250 --height 170 --dmenu --cache-file /dev/null | awk '{print tolower($1)}')

case $selected in
  logout)
    exec archlinux-logout;;
  suspend)
    exec $(~/.config/scripts/lock.sh && sleep 2 && systemctl suspend);;
  reboot)
    exec systemctl reboot;;
  shutdown)
    exec systemctl poweroff -i;;
esac
