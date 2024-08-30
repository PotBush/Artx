#!/bin/bash

cp ~/.config/hypr/script/rotatemonitor/verticalConf/monitorsVertical.conf ~/.config/hypr/monitors.conf
cp ~/.config/hypr/script/rotatemonitor/verticalConf/inputVertical.conf ~/.config/hypr/input.conf

cp ~/.config/hypr/script/rotatemonitor/verticalConf/waybarVertical.jsonc ~/.config/waybar/config.jsonc

echo "vertical" > ~/.config/hypr/script/rotatemonitor/status