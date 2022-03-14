#!/bin/bash

choises="laptop\nhome\nwork"

chosen=$(echo -e "$choises" | dmenu -i)

case "$chosen" in
    laptop) autorandr --load docked-home ;;
    home) autorandr --load docked-home ;;
    work) autorandr --load docked-work ;;
esac
