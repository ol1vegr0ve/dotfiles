#!/bin/bash

CONFIG="$HOME/.config/plasma-org.kde.plasma.desktop-appletsrc"
KRICE_PATH="$HOME/.config/krice"

get_wallpaper() {
  grep -m1 "Image=file://" "$CONFIG" | sed 's/Image=file:\/\///'
}

last_wallpaper=""

while true; do
  inotifywait -e close_write "$CONFIG" >/dev/null 2>&1

  wallpaper=$(get_wallpaper)

  if [[ -n "$wallpaper" && "$wallpaper" != "$last_wallpaper" ]]; then
    last_wallpaper="$wallpaper"
    plasma-apply-colorscheme BreezeDark
    rm -rf ~/.cache/wal
    wal -q -i "$wallpaper"
    python ~/.config/krice/extra.py
    cp ~/.cache/wal/plasma.colors ~/.local/share/color-schemes/Pywal.colors
    cp ~/.cache/wal/discord.css ~/.config/Vencord/themes/pywal.css
    sleep .5 && plasma-apply-colorscheme Pywal
  fi
done