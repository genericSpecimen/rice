#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
monitor1=$(polybar -m| tail -n 1 | sed -e 's/:.*$//g')
monitor2=$(polybar -m| head -n 1 | sed -e 's/:.*$//g')
MONITOR=$monitor1 polybar mybar &
if [ $monitor1 != $monitor2 ];
then
	MONITOR=$monitor2 polybar mybar &
fi
echo "Bars launched..."
