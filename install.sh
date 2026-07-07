#!/bin/bash
# Stow everything (run from ~/dotfiles)
cd "$(dirname "$0")"
for pkg in hypr omarchy waybar starship local-bin; do
  stow --restow --target="$HOME" "$pkg"
done
echo "✓ All configs symlinked. Reload Hyprland: hyprctl reload"