# Dotfiles

Managed with [GNU Stow](https://www.gnu.org/software/stow/). Each top-level directory is a package that mirrors where its files go under `$HOME`.

```sh
cd ~/backup_dotfiles
stow i3          # links i3/.config/i3 -> ~/.config/i3
stow -n -v i3    # dry run: show what would be linked
stow -D i3       # unlink
```

## User packages (stow into `$HOME`)

| Package | Target |
| --- | --- |
| `i3` | `~/.config/i3` |
| `polybar` | `~/.config/polybar` |
| `rofi` | `~/.config/rofi` |
| `dunst` | `~/.config/dunst` |
| `kitty` | `~/.config/kitty` |
| `picom` | `~/.config/picom` (kept for reference; not started by i3) |
| `flameshot` | `~/.config/flameshot` |
| `autorandr` | `~/.config/autorandr` |
| `lf`, `lf-ueberzug` | `~/.config/lf`, `~/.config/lf-ueberzug` |
| `lazy-nvim` | `~/.config/nvim` |
| `zsh`, `p10k_zsh` | `~/.zshrc`, `~/.p10k.zsh` |
| `nvidia-settings` | `~/.nvidia-settings-rc` |
| `screenlayout` | `~/.screenlayout` |
| `powermenu`, `volume`, `wifimenu` | `~/.local/bin` |

## System packages (not for plain `stow`)

These programs read from `/etc`, so `stow` into `$HOME` does nothing useful:

- `lightdm` goes in `/etc/lightdm/`
- `ly` goes in `/etc/ly/` (kept for reference; not installed)
- `xorg/X11/xorg.conf` goes in `/etc/X11/xorg.conf`

Copy them by hand, or link them with something like `sudo stow -t /etc --dir=lightdm/.config lightdm`.

## Secrets

The polybar weather module reads an OpenWeatherMap key from `~/.config/polybar/weather/.owm-key`. That file is gitignored, so create it yourself on a new machine.

## Machine-specific values

- i3 / screenlayout: outputs `eDP-1` and `HDMI-1-0`; touchpad `MSFT0002:00 04F3:31AD Touchpad`
- polybar: interfaces `wlan0` / `enp2s0`; battery `BAT1` / `ACAD`

## Dependencies

i3, polybar, rofi, dunst, kitty, nitrogen, copyq, udiskie, nm-applet, dex, flameshot, brightnessctl, pipewire, pipewire-pulse (`pactl`), wireplumber, i3lock-fancy-dualmonitor, xrandr, autorandr, lf, ueberzug, jq, bc, curl, oh-my-zsh, powerlevel10k, JetBrainsMono Nerd Font.
