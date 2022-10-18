#!/bin/bash

entries="🌙 Suspend\n↺ Reboot\n⏻ Shutdown"

selected=$(echo -e $entries|wofi --width 250 --height 170 --dmenu --cache-file /dev/null | awk '{print tolower($2)}')

case $selected in
  logout)
    swaymsg exit;;
  suspend)
    exec $(~/.config/scripts/lock.sh && sleep 2 && systemctl suspend);;
  reboot)
    exec systemctl reboot;;
  shutdown)
    exec systemctl poweroff -i;;
esac
