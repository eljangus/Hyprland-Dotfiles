# Hyprland-Dotfiles (NixOS)

<p align="center"><img width="2560" height="1440" alt="2026-01-02-014611_hyprshot" src="https://github.com/user-attachments/assets/401bc502-230c-4e68-9ad6-5cd44aac5bf5" /></p>
<p align="center"><img width="2560" height="1440" alt="2026-01-02-014935_hyprshot" src="https://github.com/user-attachments/assets/ccecc424-15fa-43fc-97eb-fbfcc71d0b5d" /></p>
<p align="center"><img width="2560" height="1440" alt="2026-01-02-014733_hyprshot" src="https://github.com/user-attachments/assets/d9091385-f754-4b97-840f-f255d0da742d" /></p>

Welcome to my Hyprland Dotfiles!

## Disclaimer

Some knowledge of NixOS is a prerequisite.  
You will need to edit the files within `~/Hyprland-Dotfiles/NixOS` to fit your needs and your machine.  

For example, I use NVIDIA drivers, which you may not need. Keep that in mind!

## How to Install

- Clone this repo into your home directory
- copy `/etc/nixos/hardware-configuration.nix` from your machine into `~/Hyprland-Dotfiles/NixOS/`
- Build NixOS using my flake. Change your machine's hostname to `nix-btw` or change the hostname within `~/Hyprland-Dotfiles/NixOS` to match your machine.  

  Example command (only if your hostname is `nix-btw`):

  ```bash
  sudo nixos-rebuild switch ~/Hyprland-Dotfiles#nix-btw
  ```

  Post-install, this will be aliased to `nrs`. If you change the hostname, you'll also need to change the aliases.

- Navigate into `~/Hyprland-Dotfiles` if not already there and run:

  ```bash
  stow .
  ```

- Install the pywalfox addon for Firefox
- Run:

  ```bash
  pywalfox install
  ```

- Run `Icons.sh` within InstallationScripts to symlink the icon themes I use to `~/.local/share/icons`
- Open `nwg-look` to select **Papirus-Black** as the icon theme and **Bibata-Modern-Ice** as the cursor theme, then deselect `~/.config/gtk-4.0` under "Files to export" and apply the GTK theme **adw-gtk3**
- Reboot
- Done!

## Important Keybinds

- Terminal (Kitty): `SUPER + Q`
- Browser (Firefox): `SUPER + F`
- General-purpose launcher: `SUPER + Space`  
  (You can go to System → "Kurzbefehle" to change the keybinds to your liking)
- Application Launcher: `SUPER + R`  
  (Or through the general-purpose launcher: Anwendungsstarter)

## How to Change the Language

- Edit the Rofi scripts in `~/Hyprland-Dotfiles/RofiScripts` and change everything to your desired language
- Edit `~/Hyprland-Dotfiles/NixOS/configuration.nix` and change the locale to your desired setting

## Important packages that I use for my rice

**Fonts:** 
- JetBrainsMono Nerd Font (for waybar and rofi)
- Adwaita Sans (system wide)

**Bar/Menu**
- Rofi as launcher
- Waybar as bar
- quickshell is not ready to use, I am still learning

**Colors**
- Matugen
- Pywalfox (nixpkg is called pywalfox-native)

**GTK Theme**
- adw-gtk3 powered by matugen colors

**Icons/Cursor** 
- Papirus-Black --> icon theme
- Bibata-Modern-Ice --> cursor

**Notification center**
- swaync
- libnotify (necessary on NixOS)

