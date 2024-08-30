#!/bin/bash

# Directory containing your wallpapers
WALLPAPER_DIR="$HOME/.config/hypr/Wallpaper/"

# Randomly select an image or GIF from the directory
WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.gif" \) | shuf -n 1)

# Use swww to set the wallpaper type: simple | fade | left | right | top | bottom | wipe | wave | grow | center | any | outer | random
swww img --transition-type outer --transition-step 90 --transition-duration 3 --transition-fps 30 "$WALLPAPER" 

sleep 2
