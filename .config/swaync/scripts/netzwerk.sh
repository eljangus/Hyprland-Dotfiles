#!/bin/bash

# Detect Wi-Fi state
WIFI_STATE=$(nmcli radio wifi)
# Detect Ethernet state (first ethernet interface)
ETH_IFACE=$(nmcli device status | grep ethernet | awk '{print $1}')
ETH_STATE=$(nmcli device status | grep ethernet | awk '{print $3}')

# Decide new state: if either is on/connected, turn both off; else turn both on
if [ "$WIFI_STATE" = "enabled" ] || [ "$ETH_STATE" = "connected" ]; then
    # Turn both off
    nmcli radio wifi off
    nmcli device disconnect "$ETH_IFACE"
    notify-send "Netzwerk" "Ausgeschalten"
else
    # Turn both on
    nmcli radio wifi on
    nmcli device connect "$ETH_IFACE"
    notify-send "Netzwerk" "Eingeschalten"
fi
