#!/bin/bash

BATTERY_LEVEL=$(cat /sys/class/power_supply/BATT/capacity)
THRESHOLD_1=70
THRESHOLD_2=15
THRESHOLD_3=10

notify() {
  local level=$1
  notify-send -i /home/khirod/.config/dunst/info-icon.png "Battery Warning" "Battery level is at ${level}%! Please charge your laptop."
}

# Notify based on thresholds
if (( BATTERY_LEVEL <= THRESHOLD_3 )); then
  notify "$BATTERY_LEVEL"
elif (( BATTERY_LEVEL <= THRESHOLD_2 )); then
  notify "$BATTERY_LEVEL"
elif (( BATTERY_LEVEL <= THRESHOLD_1 )); then
  notify "$BATTERY_LEVEL"
fi
