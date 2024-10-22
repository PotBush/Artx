#/bin/bash

if [ ! -f ~/.config/hypr/script/rotatemonitor/status ]; then
    echo "file 'status' dosent exist"
    exit 1
fi

status=$(cat ~/.config/hypr/script/rotatemonitor/status)

if [ "$status" = "vertical" ]; then
    exec ~/.config/hypr/script/rotatemonitor/horizontal.sh
elif [ "$status" = "horizontal" ]; then
    exec ~/.config/hypr/script/rotatemonitor/vertical.sh
else
    echo "text invalid in 'status'"
    exit 1
fi

pkill waybar
waybar &