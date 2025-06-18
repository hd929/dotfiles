#!/bin/bash
# Improved toggle script for laptop keyboard
CACHE_FILE="/home/ajitana/.config/waybar/laptop-keyboard-disabled"

# Function to check current device state
is_keyboard_disabled() {
    hyprctl devices | grep -q "at-translated-set-2-keyboard.*enabled: 0"
}

if is_keyboard_disabled; then
    # Enable keyboard
    rm -f "$CACHE_FILE"
    notify-send -u normal "Enabling keyboard laptop"
    sh -c "hyprctl keyword 'device[at-translated-set-2-keyboard]:enabled' 1"
else
    # Disable keyboard
    touch "$CACHE_FILE"
    notify-send -u normal "Disabling keyboard laptop"
    sh -c "hyprctl keyword 'device[at-translated-set-2-keyboard]:enabled' 0"
fi

