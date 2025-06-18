#!/bin/bash
#~/.config/waybar/toggle-laptop-keyboard.sh &
#  _____                 _             
# |_   _|__   __ _  __ _| | ___  
#   | |/ _ \ / _` |/ _` | |/ _ \ 
#   | | (_) | (_| | (_| | |  __/    
#   |_|\___/ \__, |\__, |_|\___|    
#            |___/ |___/                          
#

CACHE_FILE="/home/ajitana/.cache/laptop-touchpad-disabled"

if [ -f "$CACHE_FILE" ] ;then
    rm "$CACHE_FILE"
    notify-send -u normal "Enabling Touchpad"
    sh -c "hyprctl keyword 'device[synaptics-tm3253-001]:enabled' 'true'"
else
    touch "$CACHE_FILE"
    notify-send -u normal "Disabling Touchpad"
    sh -c "hyprctl keyword 'device[synaptics-tm3253-001]:enabled' 'false'"
fi
