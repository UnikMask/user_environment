#!/bin/sh
# Rofi panel to display system information

fs_size="$(df -h | awk 'NR==2{print $4, "/", $2}')"
batt_charge="$(acpi | awk '{print $4}')"
cpu_stat="$(mpstat | awk 'NR==4{print $4, "%"}')"
echo $fs_size
echo $batt_charge
echo $cpu_stat
