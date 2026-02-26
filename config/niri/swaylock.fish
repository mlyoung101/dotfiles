#!/usr/bin/env fish

set LOCKER "swaylock --clock --indicator-idle-visible --image /var/tmp/bing_wallpaper.jpg --show-failed-attempts --effect-blur 10x1 --effect-vignette 0.25:1"

# laptop
if test "$hostname" = "gecko"
    echo "laptop"
    swayidle -d -w \
        # turn off screen after 15 minutes
        timeout 900 'niri msg action power-off-monitors' \
        resume 'niri msg action power-on-monitors'
end

if test "$hostname" = "serpent"
    echo "idle desktop"
    swayidle -d -w \
        # turn off after 10 minutes
        timeout 600 'niri msg action power-off-monitors' \
        resume 'niri msg action power-on-monitors'
end

