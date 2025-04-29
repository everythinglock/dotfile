# My Dotfiles

![Hyprland Screenshot](./.config/hypr/images/sunset.png)

Personal configuration files for my Linux setup. These include configurations for:

- Window Manager: Hyprland (Wayland compositor)
- Terminal: WezTerm
- Shell: Fish
- Application Launcher: Rofi
- Logout Menu: Wlogout
- Status Bar: Waybar (not shown)
- Theme: Catppuccin

## Features

- Clean and minimal setup
- Catppuccin color scheme applied throughout
- Keyboard-driven workflow
- Custom keybindings for productivity
- Automatic screen locking
- Fully configured Fish shell with useful aliases
- WezTerm with GPU acceleration and tab support  
- Hyprland window manager with animations and workspace management
- Rofi application launcher with multiple themes
- Wlogout with custom style and layout
- Starship prompt for Fish shell

## Installation

### Prerequisites
- GNU Stow (for symlink management)
- Fish shell (recommended)
- Hyprland (for Wayland setup)

### Steps
1. Clone this repository:
```bash
git clone https://github.com/yourusername/dotfiles.git ~/.dotfiles
```

2. Install dependencies:
```bash
sudo pacman -S stow fish hyprland rofi wlogout starship
```

3. Create symlinks to the config files:
```bash
cd ~/.dotfiles
stow -vt ~ .
```

4. Set Fish as default shell:
```bash
chsh -s /usr/bin/fish
```

> Note: Adjust package manager commands based on your distribution

## Keybindings

### Window Management
| Key Combination | Action |
|----------------|--------|
| Super + Return | Open WezTerm |
| Super + D | Open Rofi launcher |
| Super + W | Close window |
| Super + Q | Show logout menu |
| Super + [1-9] | Switch workspace |
| Super + Shift + [1-9] | Move window to workspace |

### Applications
| Key Combination | Action |
|----------------|--------|
| Super + E | File manager |
| Super + B | Web browser |
| Super + F | Fullscreen toggle |

### Media Controls
| Key Combination | Action |
|----------------|--------|
| XF86AudioPlay | Play/Pause |
| XF86AudioNext | Next track |
| XF86AudioPrev | Previous track |

## Screenshots

![Desktop Preview](./.config/hypr/images/sunset.png)
![Rofi Menu](./.config/hypr/images/eye.png)

## License

MIT
