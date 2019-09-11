#!/bin/bash

PROFILE=$1
echo $PROFILE

if [ $PROFILE = "hdmi" ]; then
	pacmd set-card-profile 0 output:hdmi-stereo-extra1
elif [ $PROFILE = "nothdmi" ]; then
	pacmd set-card-profile 0 output:analog-stereo
fi

