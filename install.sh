#!/bin/bash
set -e
line1="───────────────────────────────────────────────────────"
echo "$line1"
echo "Installing notify to watch wallpaper..."
echo "$line1"
sudo pacman -S --noconfirm inotify-tools
echo "$line1"
echo "Copying config files..."
echo "$line1"
mkdir -p "$HOME/.config"
cp -a .config/* "$HOME/.config/"
echo "$line1"
echo "Creating krice service..."
echo "$line1"
mkdir -p "$HOME/.config/systemd/user"
systemctl --user daemon-reload
systemctl --user enable krice --now
if ! grep -q "KRICE START" "$HOME/.bashrc"; then
cat <<EOF >> "$HOME/.bashrc"
# KRICE START
cat ~/.cache/wal/sequences
# KRICE END
EOF
fi
echo "$line1"
echo "Done! Change your wallpaper in KDE!"
echo "$line1"