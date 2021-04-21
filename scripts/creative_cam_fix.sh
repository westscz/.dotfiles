#!/usr/bin/env bash
set -euo pipefail

# Creative Live! Cam Chat HD(vf0700) fix
# https://www.raspberrypi.org/forums/viewtopic.php?t=223268
# There is a problem with colors and auto_exposure

# Install missing dep
sudo apt install v4l-utils

# Verify index of webcam
v4l2-ctl -d /dev/video1 -l

# Stop auto exposure
v4l2-ctl -d /dev/video1 --set-ctrl=exposure_auto=1

# Set exposure to the good one
v4l2-ctl -d /dev/video1 --set-ctrl=exposure_absolute=256

# Fix white balance
v4l2-ctl -d /dev/video1 --set-ctrl=white_balance_temperature=6252

# Set brightness value
v4l2-ctl -d /dev/video1 --set-ctrl=brightness=32
