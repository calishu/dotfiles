#!/bin/bash

FILE=$(zenity --file-selection --title="Pick your wallpaper" --file-filter='*.jpg *.png *.jpeg *.bmp')

if [[ -n "$FILE" ]]; then
  hyprctl hyprpaper unload all
  hyprctl hyprpaper preload "$FILE"
  hyprctl hyprpaper wallpaper ",$FILE"
fi