#!/bin/bash
IMAGE=/home/soy/Pictures/Wallpapers/chainsaw1.png
TMPBG=/tmp/screen.png
scrot $TMPBG
convert $TMPBG -scale 10% -scale 1000% $TMPBG
convert $IMAGE -resize $(xrandr | grep '*' | awk '{print $1}')^ -gravity center -extent $(xrandr | grep '*' | awk '{print $1}') $IMAGE
i3lock -i $IMAGE

