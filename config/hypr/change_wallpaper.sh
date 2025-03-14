#!/bin/bash

directory=~/Wallpaper

if [ -d "$directory" ]; then
    random_background=$(ls $directory/* | shuf -n 1)

    hyprctl hyprpaper unload all
    hyprctl hyprpaper preload $random_background
    hyprctl hyprpaper wallpaper ", $random_background"

fi

# Path to your hyprpaper configuration file
hyprpaper_config_file=~/.config/hypr/hyprpaper.conf

# Update the config file with the new wallpaper path
echo '' > $hyprpaper_config_file
echo "preload = $random_background" >>  $hyprpaper_config_file
echo "wallpaper = , $random_background" >>  $hyprpaper_config_file

# Update the color palet (requieres pywal16)
wal -i $random_background

notify-send "Wallpaper changed"
