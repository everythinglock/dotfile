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

## Installation

1. Clone this repository:
```bash
git clone https://github.com/yourusername/dotfiles.git ~/.dotfiles
```

2. Create symlinks to the config files:
```bash
stow -d ~/.dotfiles -t ~ .
```

> Note: Requires GNU Stow for symlink management

## Keybindings

| Key Combination | Action |
|----------------|--------|
| Super + Return | Open terminal |
| Super + D | Open application launcher |
| Super + W | Close window |
| Super + Q | Logout menu |

## Screenshots

![Desktop Preview](./.config/hypr/images/sunset.png)
![Rofi Menu](./.config/hypr/images/eye.png)

## License

MIT
