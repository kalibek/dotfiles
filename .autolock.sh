#!/bin/sh -e

# switch keyboard to us
setxkbmap us

# Take a screenshot
scrot -o /tmp/screen_locked.png

# Pixellate it 10x
mogrify -scale 10% -scale 1000% /tmp/screen_locked.png
#convert /tmp/screen_locked.png -blur 0x8 /tmp/screen_locked.png

# Lock screen displaying this image.
i3lock -i /tmp/screen_locked.png && sleep 5 && xset dpms force off

