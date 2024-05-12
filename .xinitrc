#!/bin/sh

xrdb -merge ~/.Xresources
picom &
nitrogen --restore &
xset +fp /usr/share/fonts/noto/
/usr/bin/qtile start
