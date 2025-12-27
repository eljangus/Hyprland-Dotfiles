# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Use latest kernel.
  boot.kernelPackages = pkgs.linuxPackages_latest;
  networking.hostName = "Apollo"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Europe/Berlin";

  # Select internationalisation properties.
  i18n.defaultLocale = "de_DE.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "de_DE.UTF-8";
    LC_IDENTIFICATION = "de_DE.UTF-8";
    LC_MEASUREMENT = "de_DE.UTF-8";
    LC_MONETARY = "de_DE.UTF-8";
    LC_NAME = "de_DE.UTF-8";
    LC_NUMERIC = "de_DE.UTF-8";
    LC_PAPER = "de_DE.UTF-8";
    LC_TELEPHONE = "de_DE.UTF-8";
    LC_TIME = "de_DE.UTF-8";
  };

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "de";
    variant = "";
  };

  # Configure console keymap
  console.keyMap = "de";

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.elias = {
    isNormalUser = true;
    description = "Elias";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
  zramSwap.enable = true;
  programs.hyprland.enable = true;
  programs.fish.enable = true;
  users.extraUsers.elias = {
  shell = pkgs.fish;
  };

  services.greetd.enable = true;
  hardware.bluetooth.enable = true;
  services.hardware.openrgb.enable = true; 
  services.hardware.openrgb.motherboard = "amd";  

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    vim
    kitty
    firefox
    wget
    git
    swaynotificationcenter
    stow
    nautilus 
    rofi
    dconf
    killall
    nwg-look
    libsForQt5.qt5ct
    kdePackages.qt6ct
    waybar
    swww    
    starship
    matugen
    btop
    adw-gtk3
    alsa-plugins
    ani-cli
    asciiquarium-transparent
    blueman
    bluez
    brightnessctl
    cava
    cbonsai
    cliphist
    dconf-editor
    decibels
    vscodium 
    discord
    steam
    file-roller
    fuse
    wl-clipboard
    gamescope
    gimp
    gnome-boxes
    gnome-clocks
    gnome-themes-extra
    gthumb
    hypridle
    hyprlock
    hyprpicker
    hyprpolkitagent
    hyprshot
    imv
    kdePackages.kamera
    kdePackages.kdeconnect-kde
    linux-firmware
    mangohud    
    nwg-dock-hyprland
    obs-studio
    openrgb-with-all-plugins
    font-awesome
    pamixer
    pipewire
    pavucontrol
    quickshell
    rofi-calc
    translate-shell
    unimatrix
    wineWowPackages.waylandFull
    winetricks
    wireplumber
    wl-clip-persist
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland
    yazi
    zenity 
    microcode-amd
    nitch
  ];
  fonts.packages = with pkgs; [ 
    noto-fonts
    adwaita-fonts
    nerd-fonts.jetbrains-mono 
    noto-fonts-cjk-sans
  ];
  
  hardware.cpu.amd.updateMicrocode = true;

  hardware.graphics = {
    enable = true;
  };
  services.xserver.videoDrivers = ["nvidia"];

  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.enable = false;
    powerManagement.finegrained = false;
    open = true;
    nvidiaSettings = true;
  };
 
  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  networking.firewall.enable = true;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "25.11"; # Did you read the comment?

}
