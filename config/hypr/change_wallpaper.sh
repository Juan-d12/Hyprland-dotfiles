#!/usr/bin/env bash

WALLPAPER_DIR="$HOME/Wallpaper/"
CURRENT_WALL=$(hyprctl hyprpaper listloaded)

# Path to your hyprpaper configuration file
hyprpaper_config_file="$HOME/.config/hypr/hyprpaper.conf"

# Get a random wallpaper that is not the current one
WALLPAPER=$(find "$WALLPAPER_DIR" -type f ! -name "$(basename "$CURRENT_WALL")" | shuf -n 1)

# Update the config file with the new wallpaper path and apply the selected wallpaper
echo "preload = $WALLPAPER" >  $hyprpaper_config_file
echo "wallpaper = , $WALLPAPER" >>  $hyprpaper_config_file

# Update the color palette (requieres pywal16)
wal -i $WALLPAPER

notify-send "Wallpaper changed"
