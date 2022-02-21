#!/bin/bash

icon="$HOME/Pictures/wallpaper/lock.png"
tmpbg='/tmp/screen.png'

#(( $# )) && { icon=$1; }

scrot "$tmpbg"
convert "$tmpbg" -blur 0x8 "$tmpbg"
convert "$tmpbg" "$icon" -gravity center -composite -matte "$tmpbg"
i3lock -i "$tmpbg"
