#!/bin/bash
docker run -it --rm \
        --net=host \
        --env="WAYLAND_DISPLAY=wayland-1" \
        --env="DISPLAY=:1" \
        --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
        --volume="$HOME/.Xauthority:/root/.Xauthority:rw" \
        tor-browser \
        /bin/bash 