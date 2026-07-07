#!/bin/bash
# Unstow everything (run from ~/dotfiles)
cd "$(dirname "$0")"
for pkg in hypr omarchy waybar starship local-bin; do
  stow --delete --target="$HOME" "$pkg"
done
echo "✓ Symlinks removed"