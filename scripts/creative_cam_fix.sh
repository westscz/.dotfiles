#!/usr/bin/env bash
set -euo pipefail

# Creative Live! Cam Chat HD(vf0700) fix
# https://www.raspberrypi.org/forums/viewtopic.php?t=223268
# There is a problem with colors and auto_exposure

INDEX=1            # Use `v4l2-ctl -d /dev/video1 -l` for verification
EXPOSURE=400
WHITE_BALANCE=6252
BRIGHTNESS=32


if test ! $(which v4l2-ctl)
then
    # Install missing dep
    echo "Installing v4l2-ctl..."
    sudo apt install v4l-utils -y
fi

echo "Change settings exposure=$EXPOSURE, white_balance=$WHITE_BALANCE"

# Stop auto exposure
v4l2-ctl -d /dev/video$INDEX --set-ctrl=exposure_auto=1

# Set exposure to the good one
v4l2-ctl -d /dev/video$INDEX --set-ctrl=exposure_absolute=$EXPOSURE

# Stop auto white balance
v4l2-ctl -d /dev/video$INDEX --set-ctrl=white_balance_temperature_auto=0

# Set white balance temperature
v4l2-ctl -d /dev/video$INDEX --set-ctrl=white_balance_temperature=$WHITE_BALANCE

# Set brightness value
v4l2-ctl -d /dev/video$INDEX --set-ctrl=brightness=$BRIGHTNESS
