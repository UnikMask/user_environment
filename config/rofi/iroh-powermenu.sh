#! /bin/sh

# === === === === === === === ===
# Creator: UnikMask
# Email: <visorunik@gmail.com>
# === === === === === === === ===

# Command for rofi
rofi_cmd="rofi -theme iroh-powermenu.rasi"

# Options
shutdown="⏻"
reboot=""
lock=""
suspendtram=""
suspendtdisk=""
logoutuser=""

# Values given to rofi
options="$shutdown\n$reboot\n$lock\n$suspendtram\n$suspendtdisk\n$logoutuser"

fcmd="$(echo -e $options | $rofi_cmd -dmenu -selected-row 1)"
case $fcmd in
	$shutdown) 
		poweroff -i;;
	$reboot) 
		reboot -i;;
	$lock) 
		slock;;
	$suspendtram) 
		doas s2ram;;
	$suspendtdisk)
		doas loginctl hibernate ;;
	$logoutuser) 
		i3-msg exit;;
esac
