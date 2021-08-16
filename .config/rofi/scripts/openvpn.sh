#!/bin/bash
# dependencies: openvpn, rofi

cd /home/hertod/Documents/OpenVPN

VPN=$(ls *.ovpn | rofi -dmenu -width 220 -lines 4 -font "JetBrainsMono Nerd Font Bandit Medium 8")

[ -z "$VPN" ] && exit

urxvt -e /bin/bash -c "sudo openvpn --config /home/hertod/Documents/OpenVPN/$VPN"

exit
