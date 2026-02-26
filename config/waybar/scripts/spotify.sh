#!/bin/bash

players=$(playerctl -l 2>/dev/null)

# If no players available
if [ -z "$players" ]; then
    echo " Not playing"
    exit 0
fi

# Only check Spotify
status=$(playerctl -p spotify status)
artist=$(playerctl -p spotify metadata artist 2>/dev/null)
title=$(playerctl -p spotify metadata title 2>/dev/null)

if [ "$status" = "No players found" ]; then
    echo " Not playing"
    exit 0
fi

if [ "$status" = "Playing" ]; then
    echo "▶ $title - $artist"
elif [ "$status" = "Paused" ]; then
    echo " $title - $artist (paused)"
else
    echo " Not playing"
fi
