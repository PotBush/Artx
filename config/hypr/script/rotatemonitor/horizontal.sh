#!/bin/bash

cp ~/.config/hypr/script/rotatemonitor/horizontalConf/monitorsHorizontal.conf ~/.config/hypr/monitors.conf
cp ~/.config/hypr/script/rotatemonitor/horizontalConf/inputHorizontal.conf ~/.config/hypr/input.conf

cp ~/.config/hypr/script/rotatemonitor/horizontalConf/waybarHorizontal.jsonc ~/.config/waybar/config.jsonc

echo "horizontal" > ~/.config/hypr/script/rotatemonitor/status