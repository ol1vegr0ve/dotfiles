#!/bin/bash
set -e
line1="───────────────────────────────────────────────────────"
echo "$line1"
echo "Uninstalling inotify-tools"
echo "$line1"
sudo pacman -R --noconfirm inotify-tools || true
echo "$line1"
echo "Removing krice..."
echo "$line1"
rm -rf "$HOME/.config/krice"
echo "$line1"
echo "Removing krice service..."
echo "$line1"
systemctl --user stop krice.service || true
systemctl --user disable krice.service || true
rm -f "$HOME/.config/systemd/user/krice.service"
systemctl --user daemon-reload
echo "$line1"
echo "Cleaning up .bashrc"
echo "$line1"
sed -i '/^[[:space:]]*# KRICE START/,/^[[:space:]]*# KRICE END/d' "$HOME/.bashrc"
plasma-apply-colorscheme BreezeDark
echo "$line1"
echo "Krice successfully removed."
echo "$line1"