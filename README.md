# Hyprland Dotfiles

This repository contains a minimal configuration of hyprland for Archlinux

## Screenshots

![Desktop](/Screenshots/desktop.png)

![Wlogout](/Screenshots/wlogout.png)

## Features

- **Wallpaper change**: Includes a shell script to change to a random wallpaper from the ```Wallpaper``` folder
- **Matching colors**: The colors of the terminal and the application launcher will match the current wallpaper 


## How to use

> [!IMPORTANT]  
> The steps are only for Archlinux
- Install dependencies. You will find them inside  ```requerimientos .txt```
- Copy the insides of the ```config``` folder to ```~/.config``` 
- Copy the ```Wallpaper``` folder to your user's home directory ```~/```
- Add this lines at the end of your ```~/.bashrc``` file
  ```
  # Show custom fastfetch when opening the terminal
  fastfetch -c ~/.config/fastfetch/arch.jsonc
  ```
- Restart your machine
- Use the keybind __Ctrl+Alt+w__ to activate the ```change_wallpaper.sh``` script (Place any images you would like to use as wallpapers inside the ```Wallpaper``` folder)
