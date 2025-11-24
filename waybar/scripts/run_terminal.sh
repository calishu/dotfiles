#!/bin/bash
TERMINAL=$(grep '^$menu' ~/.config/hypr/hyprland.conf | awk -F'= ' '{print $2}')
$TERMINAL