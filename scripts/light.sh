#!/bin/bash
BRIGHT="$(xrandr --verbose | grep -m 1 -i brightness | cut -f2 -d ' ')"
DEVICE="$(xrandr | grep -oP -e '[A-Z]+-[0-9](?= connected)')"

echo $BRIGHT
NEW_BRIGHT="$(echo $BRIGHT $1 0.1 | bc)"

for d in $DEVICE
do
	xrandr --output $d --brightness $NEW_BRIGHT
done
