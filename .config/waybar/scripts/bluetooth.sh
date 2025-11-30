#!/bin/bash
STATE=$(bluetoothctl show | grep "Powered" | awk '{print $2}')
if [ "$STATE" = "yes" ]; then
    bluetoothctl power off
    notify-send "Bluetooth" "Ausgeschalten"
else
    bluetoothctl power on
    notify-send "Bluetooth" "Eingeschalten"
fi
