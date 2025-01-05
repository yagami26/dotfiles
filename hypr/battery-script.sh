notify_levels=(3 5 10 20)
BAT=$(ls /sys/class/power_supply |grep BAT |head -n 1)
last_notify=100

while true; do
    bat_lvl=$(cat /sys/class/power_supply/${BAT}/capacity)
    if [ $bat_lvl -gt $last_notify ]; then
            last_notify=$bat_lvl
    fi
    for notify_level in ${notify_levels[@]}; do
        if [ $bat_lvl -le $notify_level ]; then
            if [ $notify_level -lt $last_notify ]; then
		hyprctl notify -1 100000 "rgb(ff0000)" "fontsize:128 Charger laga lo sir"
                last_notify=$bat_lvl
            fi
        fi
    done
sleep 60
done
