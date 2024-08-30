#!/bin/bash
if pgrep -x "wvkbd-mobintl" > /dev/null; then
    echo "wvkbd-mobintl is executing, it will killing"
    pkill -x "wvkbd-mobintl"
else
    echo "wvkbd-mobintl is not executing, it will start"
    wvkbd-mobintl -l full -L 200 
fi