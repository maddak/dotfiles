#!/bin/bash 
tpset() { xinput set-prop "TPPS/2 IBM TrackPoint" "$@"; }
tpset "Evdev Wheel Emulation" 1
tpset "Evdev Wheel Emulation Button" 2
tpset "Evdev Wheel Emulation Timeout" 200
tpset "Evdev Wheel Emulation Axes" 6 7 4 5
tpset "Device Accel Constant Deceleration" 0.95
xrdb -merge -I$HOME ~/.Xresources
exec i3
