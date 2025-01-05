#!/bin/bash

# Check if Telegram is running
telegram_pid=$(pgrep -f telegram-desktop)

# If Telegram is running, the PID will be non-zero
if [[ -n "$telegram_pid" ]]; then
    # Telegram is running, return 0
    hyprctl -j clients | jq 'map(select(.class == "org.telegram.desktop"))[0].workspace.id' | xargs hyprctl dispatch workspace
else
    # Telegram is not running, return 1
    exec telegram-desktop
fi
