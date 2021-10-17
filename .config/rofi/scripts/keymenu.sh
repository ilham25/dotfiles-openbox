#!/usr/bin/env bash

DMENU="rofi -dmenu -i -p Search -theme themes/appsmenu.rasi"
# OPTIONS = [[label, command]]


OPTIONS='''
[
  ["File Manager [⌘ + E]", "thunar"],
  ["Dark Theme", "~/.config/i3/change 2"],
  ["Light Theme", "~/.config/i3/change 1"],
  ["Close App [⌘ + C]", ""],
  ["App Launcher [⌘ + R]", "~/.config/rofi/scripts/appsmenu.sh"],
  ["Lockscreen [⌘ + L]", "~/.config/i3/lockscreen"],
  ["Tilling Direction (Horizontal) [⌘ + H]", ""],
  ["Tilling Direction (Vertical) [⌘ + J]", ""],
  ["Open Terminal [⌘ + Return]", "urxvt"],
  ["Network Manager [⌘ + F12]", "networkmanager_dmenu"],
  ["Screenshot Menu [⌘ + Printscreen]", "~/.config/rofi/scripts/screenshot.sh"],
  ["Power Menu [⌘ + Shift + E]", "~/.config/rofi/scripts/powermenu.sh"],
  ["WM Restart [⌘ + Shift + R]", ""],
  ["Change Workspace [⌘ + Number]", ""],
  ["Move active windows to workspace [⌘ + Shift + Number]", ""],
  ["Move Windows - Floating [⌘ + Left Click (hold)]", ""],
  ["Resize Windows - Floating [⌘ + Right Click (hold)]", ""],
  ["Switch between tiling/floating [⌘ + Shift + Space]", ""],
  ["Move Windows - Tiling [⌘ + Shift + ↑ / ↓ / ← / →]", ""],
  ["Resize Windows - Tiling [⌘ + Ctrl + ↑ / ↓ / ← / →]", ""]
]
'''

label=$(echo $OPTIONS | jq -r "sort | .[][0]" | $DMENU)
exec $(echo $OPTIONS | jq -r ".[] | select(.[0] == \"$label\") | .[1]")
