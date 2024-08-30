#!/bin/bash
sleep 0.1
swaylock --screenshots \
 --clock --timestr "%I:%M:%S %p" --datestr "%a, %e of %B" \
 --indicator --indicator-radius 100 --indicator-thickness 7 \
 --effect-blur 7x5 --effect-scale 1 \
 --scaling center --effect-vignette 0.5:0.5 \
 --ring-color ffffff \
 --key-hl-color 0011ff \
 --line-color ffffff00 \
 --inside-color 00000088 \
 --separator-color 00000000 \
 --text-color ffffff \
 --ignore-empty-password --indicator-caps-lock