#!/bin/bash

STATE_FILE="/tmp/waybar_clock_mode"

if [ "$1" = "toggle" ]; then
    if [ -f "$STATE_FILE" ]; then
        STATE=$(cat "$STATE_FILE")
    else
        STATE="time"
    fi

    if [ "$STATE" = "time" ]; then
        echo "date" > "$STATE_FILE"
    else
        echo "time" > "$STATE_FILE"
    fi
fi

if [ -f "$STATE_FILE" ]; then
    STATE=$(cat "$STATE_FILE")
else
    STATE="time"
fi

if [ "$STATE" = "time" ]; then
    date +"🕒 %H:%M:%S"
else
    date +"📅 %a, %d %b %Y"
fi