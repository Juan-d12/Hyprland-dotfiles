#!/usr/bin/env bash

WALLPAPER_DIR="$HOME/Wallpaper/"

# Path to your hyprpaper configuration file
hyprpaper_config_file="$HOME/.config/hypr/hyprpaper.conf"

# Get a random wallpaper
WALLPAPER_NAME=$(ls $WALLPAPER_DIR | shuf -n 1)
WALLPAPER="~/Wallpaper/$WALLPAPER_NAME"

# Apply the selected wallpaper
hyprctl hyprpaper wallpaper " , $WALLPAPER"

# Update the config file with the new wallpaper path so the change is persistent
echo "wallpaper {" >  $hyprpaper_config_file
echo "    monitor =" >>  $hyprpaper_config_file
echo "    path = $WALLPAPER" >>  $hyprpaper_config_file
echo "    fit_mode = cover" >>  $hyprpaper_config_file
echo "}" >>  $hyprpaper_config_file
echo "splash = false" >>  $hyprpaper_config_file

# Update the color palette (requieres pywal16)
wal -i ~/Wallpaper/$WALLPAPER_NAME -n

notify-send "Wallpaper changed"
