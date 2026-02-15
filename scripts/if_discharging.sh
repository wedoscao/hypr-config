#!/usr/bin/bash

BAT_PATH=$(upower -e | grep 'BAT' | head -n 1)

if [ -z "$BAT_PATH" ]; then
    hyprctl dispatch dpms off
    exit 0
fi

status=$(upower -i "$BAT_PATH" | grep "state" | awk '{print $2}')

if [ "$status" = "discharging" ]; then
    systemctl suspend
else
    hyprctl dispatch dpms off
fi
