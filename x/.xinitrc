#!/bin/sh
[ -f ~/.xprofile ] && . ~/.xprofile
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap

#bspwm
#exec dbus-launch --exit-with-session xmonad
i3
