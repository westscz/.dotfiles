#!/usr/bin/env bash
set -euo pipefail

# Change video output
# Working properly on laptop

VGA="$(xrandr | grep -e 'VGA-[0-9]* connected')"
HDMI="$(xrandr | grep -e 'HDMI-[0-9]* connected')"

if [ -n "$VGA" ]
then
	notify-send 'VGA connected'
	xrandr --output LVDS-1 --mode 1366x768 --output VGA-1 --auto --right-of LVDS-1
	pacmd set-card-profile alsa_card.pci-0000_00_1b.0 output:analog-stereo
fi

if [ -n "$HDMI" ]
then
	notify-send 'HDMI connected'
	xrandr --output HDMI-1 --auto --right-of LVDS-1
	pacmd set-card-profile alsa_card.pci-0000_00_1b.0 output:hdmi-stereo
fi

if [ "$VGA" = "$HDMI" ]
then
	notify-send 'Disconnected'
	pacmd set-card-profile alsa_card.pci-0000_00_1b.0 output:analog-stereo
fi
