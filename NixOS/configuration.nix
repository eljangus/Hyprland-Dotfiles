{ config, pkgs, inputs, ... }:

{

  imports = [
    ./hardware-configuration.nix
  ];

  # Bootloader
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Use latest kernel
  boot.kernelPackages = pkgs.linuxPackages_latest;
  
  # Networking
  networking.hostName = "nix-btw";
  networking.networkmanager.enable = true;
  networking.firewall.enable = true;
  
  # KDE Connect Configuration
  programs.kdeconnect.package = pkgs.kdePackages.kdeconnect-kde;
  programs.kdeconnect.enable = true;

  # Localization
  time.timeZone = "Europe/Berlin";
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

  # Keyboard
  services.xserver.xkb = {
    layout = "de";
    variant = "";
  };
  console.keyMap = "de";

  # User account
  users.users.elias = {
    isNormalUser = true;
    description = "Elias";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.fish;
  };

  # Home Manager
  home-manager.useUserPackages = true;
  home-manager.useGlobalPkgs = true;
  home-manager.backupFileExtension = "backup";

  # System-wide settings
  nixpkgs.config.allowUnfree = true;
  zramSwap.enable = true;

  # Desktop Environment
  programs.hyprland.enable = true;
  programs.dconf.enable = true;
  
  # Shell (required for user shell)
  programs.fish.enable = true;
  
  # Gaming
  programs.steam = {
    enable = true;
    gamescopeSession.enable = false;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
  };
  programs.gamescope = {
    enable = true;
    package = pkgs.gamescope;
  };

  # Flatpak
  services.flatpak.enable = false;

  # Hardware
  hardware.bluetooth.enable = true;
  hardware.cpu.amd.updateMicrocode = true;
  hardware.enableAllFirmware = true;
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
    extraPackages = with pkgs; [
      nvidia-vaapi-driver
    ];
  };
  hardware.opentabletdriver = {
    enable = false;
  };

  # NVIDIA
  services.xserver.videoDrivers = ["nvidia"];
  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.enable = false;
    powerManagement.finegrained = false;
    open = true;
    nvidiaSettings = true;
    package = config.boot.kernelPackages.nvidiaPackages.latest;
  };

  # OpenRGB
  services.hardware.openrgb.enable = true; 
  services.hardware.openrgb.motherboard = "amd";

  # Audio
  services.pipewire = {
    enable = true;
    wireplumber.enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  # Display Manager
  services.displayManager.sddm = {
    enable = true;
    theme = "sddm-astronaut-theme";
    wayland.enable = true;
    extraPackages = with pkgs; [ 
      kdePackages.qtmultimedia
      kdePackages.qtsvg
      kdePackages.qtvirtualkeyboard
      kdePackages.qtbase
    ]; 
  };

  # XDG Portal
  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-hyprland
      xdg-desktop-portal-gtk
    ];
  };
  
  # GVFS for trash support in file managers
  services.gvfs.enable = true;

  # System packages (only system-level stuff)
  environment.systemPackages = with pkgs; [
    inputs.matugen.packages.${pkgs.stdenv.hostPlatform.system}.default
    vim
    killall
    sddm-astronaut
    libsForQt5.qt5ct
    kdePackages.qt6ct
    gnome-themes-extra
    alsa-plugins
    bluez
    font-awesome
    libnotify
    libqalculate
    mangohud
    winetricks
    openrgb-with-all-plugins
    nix-search-tv
    fzf
    xrandr
  ];

  # Fonts
  fonts.packages = with pkgs; [ 
    noto-fonts
    adwaita-fonts
    nerd-fonts.jetbrains-mono 
    noto-fonts-cjk-sans
  ];
  
  # Udev Settings
 
  # Teevolution Terra
 services.udev.extraRules = ''
    # Teevolution Terra
    SUBSYSTEM=="hidraw", ATTRS{idVendor}=="3554", ATTRS{idProduct}=="f523", MODE="0666", TAG+="uaccess"
    SUBSYSTEM=="hidraw", ATTRS{idVendor}=="3554", ATTRS{idProduct}=="f522", MODE="0666", TAG+="uaccess" 

    # Wooting One Legacy
    SUBSYSTEM=="hidraw", ATTRS{idVendor}=="03eb", ATTRS{idProduct}=="ff01", MODE="0666", TAG+="uaccess"
    SUBSYSTEM=="usb", ATTRS{idVendor}=="03eb", ATTRS{idProduct}=="ff01", MODE="0666", TAG+="uaccess"

    # Wooting One update mode
    SUBSYSTEM=="hidraw", ATTRS{idVendor}=="03eb", ATTRS{idProduct}=="2402", MODE="0666", TAG+="uaccess"

    # Wooting Two Legacy
    SUBSYSTEM=="hidraw", ATTRS{idVendor}=="03eb", ATTRS{idProduct}=="ff02", MODE="0666", TAG+="uaccess"
    SUBSYSTEM=="usb", ATTRS{idVendor}=="03eb", ATTRS{idProduct}=="ff02", MODE="0666", TAG+="uaccess"

    # Wooting Two update mode
    SUBSYSTEM=="hidraw", ATTRS{idVendor}=="03eb", ATTRS{idProduct}=="2403", MODE="0666", TAG+="uaccess"

    # Generic Wooting devices
    SUBSYSTEM=="hidraw", ATTRS{idVendor}=="31e3", MODE="0666", TAG+="uaccess"
    SUBSYSTEM=="usb", ATTRS{idVendor}=="31e3", MODE="0666", TAG+="uaccess"
  '';


  # Nix optimization
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 7d";
  };

  # Nix settings
  nix.settings.auto-optimise-store = true;
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  system.stateVersion = "25.11";
}
