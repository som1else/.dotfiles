#! /bin/bash

# From Manjaro's "Proper ~/.xinitrc"
# https://wiki.manjaro.org/index.php?title=Proper_~/.xinitrc_File
if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# Load .Xresources 
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# Load notification daemon
dunst &

# Load terminal daemon
urxvtd -q -o -f &

# Sleep a couple seconds here
# (work-around intel driver garbling my
# external monitor display settings below...)
sleep 2
# Set laptop monitor as primary
xrandr --output eDP1 --mode 3840x2160 --rate 60 --primary
# Look for external monitor, if found, set it to the left...
# xrandr --output VGA1 --mode 1600x900 --rate 60 --left-of LVDS1

# Set wallpaper(s)
~/.fehbg &

# nitrogen --restore &

# Load window Manager
exec i3

