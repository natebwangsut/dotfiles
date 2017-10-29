#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch top-polybar
polybar top -c ~/.config/polybar/top_config &
echo "Top bar launched"

# Launch bottom-polybar
polybar bottom -c ~/.config/polybar/bottom_config &
echo "Bottom bar launched"
