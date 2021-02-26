#!/usr/bin/env bash

# Download random background / lockscreen wallpapers
# For GNOME desktop. Tested on Ubuntu 18.04

date +"%Y-%m-%d_%H-%M-%S"

set -e

WALLPAPER="$HOME/Downloads/background.jpg"

# Change these to match your screen resolution
WIDTH=1920
HEIGHT=1200

curl --location -o $WALLPAPER "https://source.unsplash.com/random/${WIDTH}x${HEIGHT}"

DISPLAY=:0 XAUTHORITY=/home/kalibek/.Xauthority feh --bg-scale $WALLPAPER

