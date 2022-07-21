#!/usr/bin/env bash

# Only exported variables can be used within the timer's command.
export PRIMARY_DISPLAY="$(xrandr | awk '/ primary/{print $1}')"

# Run xidlehook
xidlehook \
  `# Don't lock when there's a fullscreen application` \
  --not-when-fullscreen \
  `# Don't lock when there's audio playing` \
  --not-when-audio \
  `# Dim the screen after 15 minutes, undim if user becomes active` \
  --timer 900 \
    'xrandr --output "$PRIMARY_DISPLAY" --brightness .1' \
    'xrandr --output "$PRIMARY_DISPLAY" --brightness 1' \
  `# Undim & lock after 10 more seconds` \
  --timer 910 \
    'xrandr --output "$PRIMARY_DISPLAY" --brightness 1; i3lock -i ~/Pictures/Arch7.png' \
    '' \
  # `# Finally, suspend an hour after it locks` \
  # --timer 6 \
  #   'i3lock -i ~/Pictures/Arch7.png' \
  # ''
