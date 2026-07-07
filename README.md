# Omarchy Gundam Dotfiles

Personal Hyprland/Omarchy setup themed around a Gundam mecha aesthetic.

## Includes

- **`omarchy/`** — Custom `gundam` theme (colors.toml, hyprland.conf, hyprlock.conf, mako.ini, icons, waybar.css)
  plus the `alacritty.toml.tpl` user override (adds window opacity) and the `theme-set` hook that
  relaunches `mpvpaper` after theme switches.
- **`hypr/`** — `looknfeel.conf` (sharp corners, snap animations), `bindings.conf`
  (Super+L = layout toggle on all workspaces), `hyprlock.conf` (HUD-style lock screen),
  `autostart.conf` (animated Gundam wallpaper via mpvpaper on both monitors).
- **`waybar/`** — `style.css` with cyan accents, red on critical states, hover effects.
- **`starship/`** — HUD-style prompt with cyan/red blocks.
- **`local-bin/`** — `omarchy-hyprland-workspace-layout-toggle-all` (toggles layout on all
  workspaces of the current monitor so expanded windows stay expanded).

## Install

```bash
cd ~/dotfiles
./install.sh         # Symlinks all configs into ~/.config and ~/.local/bin
hyprctl reload
omarchy theme set gundam
```

## Prerequisites

```bash
sudo pacman -S --asdeps mpv mpvpaper stow ttf-rajdhani ttf-orbitron tela-circle-icon-theme-all
yay -S --noconfirm fonts-rajdhani  # AUR fallback if not in repos
```

The animated wallpaper video lives at `~/Videos/Wallpapers/gundam-white.mp4` (download separately,
not tracked here). Source: [YouTube](https://www.youtube.com/watch?v=5en1ceC8FAY).

## Uninstall

```bash
cd ~/dotfiles
./uninstall.sh
```