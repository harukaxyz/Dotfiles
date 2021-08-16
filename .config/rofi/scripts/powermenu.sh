#!/bin/sh

# options to be displayed
option0="    Lock    "
option1="   Reboot   "
option2="   Suspend  "
option3="  Shutdown  "

dir="~/.config/rofi/scripts/rofi"
rofi_command="rofi -theme $dir/powermenu.rasi"

# options passed into variable
options="$option0\n$option1\n$option2\n$option3"

chosen="$(echo "$options" | $rofi_command -p "Menu" -dmenu)"

case $chosen in
    $option0)
        lock-dark
        ;;
    $option1)
        loginctl reboot
        ;;
    $option2)
        loginctl suspend
	;;
    $option3)
        loginctl poweroff
	;;
esac
