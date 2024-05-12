#!/bin/sh

xrdb -merge ~/.Xresources
picom &
nitrogen --restore &
/usr/bin/qtile start
