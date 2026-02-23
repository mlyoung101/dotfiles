#!/usr/bin/env fish

set LOCKER "swaylock --indicator-idle-visible --image /var/tmp/bing_wallpaper.jpg --show-failed-attempts"

swayidle -d -w \
    timeout 1800 'niri msg action power-off-monitors' \
    timeout 300 $LOCKER \
    resume 'niri msg action power-on-monitors' \
    before-sleep $LOCKER
