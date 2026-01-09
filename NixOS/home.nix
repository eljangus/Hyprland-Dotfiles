{ config, pkgs, ... }:

{
  home.stateVersion = "25.11";
  home.username = "elias";
  home.homeDirectory = "/home/elias";

  # mimeApps
  xdg.mimeApps.enable = true;
  xdg.mimeApps.defaultApplications = {
  "image/jpeg" = "imv.desktop";
  "image/png" = "imv.desktop";
  "image/gif" = "firefox.desktop";
  "image/webp" = "org.gnome.eog.desktop";
  "image/heif" = "imv.desktop";
  "text/plain" = "codium.desktop";
  "text/css" = "codium.desktop";
  "application/x-shellscript" = "codium.desktop";
  "application/x-zerosize" = "codium.desktop";
  "text/html" = "firefox.desktop";
  "x-scheme-handler/http" = "firefox.desktop";
  "x-scheme-handler/https" = "firefox.desktop";
  "application/pdf" = "firefox.desktop";
  "application/vnd.openxmlformats-officedocument.wordprocessingml.document" = "chromium.desktop";
  "audio/mpeg" = "org.gnome.Decibels.desktop";
  "inode/directory" = "org.gnome.Nautilus.desktop";
  "video/mp4" = "mpv.desktop";
  "video/x-matroska" = "mpv.desktop";
  "video/webm" = "mpv.desktop";
  "video/ogg" = "mpv.desktop";
  "video/quicktime" = "mpv.desktop";
  "video/x-flv" = "mpv.desktop";
  "video/x-msvideo" = "mpv.desktop";
  "video/x-ms-wmv" = "mpv.desktop";
  "video/mpeg" = "mpv.desktop";
  };

  # Firefox with pywalfox
  programs.firefox = {
    enable = true;
    nativeMessagingHosts = [ pkgs.pywalfox-native ];
    languagePacks= [ "de" ];
  };
 
  # Chromium 
  programs.chromium.enable = true;
  
  # Fish shell configuration
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set -g fish_color_autosuggestion brblack
      set -U fish_greeting ""
    '';
    functions = {
      ps5 = ''
          set capacity (cat /sys/class/power_supply/ps-controller-battery-4c:b9:9b:cc:ba:12/capacity)
          set battery_status (cat /sys/class/power_supply/ps-controller-battery-4c:b9:9b:cc:ba:12/status)
    
          # Simple bar
          set bar_length 20
          set filled (math "round($capacity / 100 * $bar_length)")
          set empty (math "$bar_length - $filled")
    
          set bar (string repeat -n $filled '█')(string repeat -n $empty '░')
    
          echo "🎮 PS5 Controller: [$bar] $capacity% ($battery_status)"
      '';
      kitty-theme = ''
          for socket in /tmp/kitty-*
            kitty @ --to unix:$socket set-colors ~/.config/kitty/themes/Matugen.conf
          end
      '';
    };
    shellAliases = {
      nrs = "sudo nixos-rebuild switch --flake ~/Hyprland-Dotfiles/NixOS#nix-btw";
      nrb = "sudo nixos-rebuild boot --flake ~/Hyprland-Dotfiles/NixOS#nix-btw";
      nfu = "nix flake update";
      nce = "vim ~/Hyprland-Dotfiles/NixOS/configuration.nix";
      nhe = "vim ~/Hyprland-Dotfiles/NixOS/home.nix";
      nfe = "vim ~/Hyprland-Dotfiles/NixOS/flake.nix";
      try = "nix-shell -p";
      ncg = "sudo nix-collect-garbage -d";
      cff = "reset && nitch";  
      ns = "nix-search-tv print | fzf --preview 'nix-search-tv preview {}' --scheme history";
      ls = "eza -la";
    };
  };
  
  # Starship prompt
  programs.starship = {
    enable = true;
    enableFishIntegration = true;
  };

  # Git configuration (add your details)
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "eljangus";
        email = "eljangus@gmail.com";
      };
    };
  };
  
  # KDE Connect configuration
  services.kdeconnect = {
    package = 
       pkgs.kdePackages.kdeconnect-kde
    ;
    enable = true;
    indicator = true;
  };
  
  # OBS for screen recording
  programs.obs-studio = {
    enable = true;
    plugins = with pkgs.obs-studio-plugins; [
      obs-pipewire-audio-capture
      obs-gstreamer
      obs-vkcapture
    ];
    package = pkgs.obs-studio.override {
      cudaSupport = true; 
    };
  };
 
  # Video Player
  programs.mpv = {
    enable = true;
  };
   
  # Kitty Terminal configuration
  programs.kitty = {
    enable = true;
    package = pkgs.kitty;
    settings = {
      include = "current-theme.conf";
      font_size = 14;
      cursor_trail = 5;
      scrollback_indicator_opacity = 0;
      window_padding_width = 20;
      placement_strategy = "top-left";
      hide_window_decorations = "yes";
      resize_debounce_time = "0 0";
      confirm_os_window_close = 0;
      background_opacity = 0.8;
      background_blur = 0;
      allow_remote_control = "yes";
      listen_on = "unix:/tmp/kitty";
      "map shift+cmd+plus" = "change_font_size all +2.0";
      "map shift+cmd+minus" = "change_font_size all -2.0";
      "map shift+cmd+backspace" = "change_font_size all 14";
    };
    font = {
      size = 14;
      name = "JetBrains Mono Nerd Font";
      package = pkgs.nerd-fonts.jetbrains-mono;
    };
  };
  programs.rofi = {
    enable = true;
    plugins = [ pkgs.rofi-calc ];
    package = pkgs.rofi;
    configPath = ".config/rofi/.hm-config.rasi";
  };

  # User-specific packages
  home.packages = with pkgs; [
    yazi
    vscodium
    git
    gimp
    gthumb
    imv
    cava
    waybar
    swww
    btop
    brightnessctl
    hyprpicker
    hyprshot
    cliphist
    wl-clipboard
    wl-clip-persist
    pamixer
    pavucontrol
    eza
    pywalfox-native
    swaynotificationcenter
    nwg-look
    nwg-dock-hyprland
    adw-gtk3
    hypridle
    hyprlock
    hyprpolkitagent
    discord
    nautilus
    file-roller
    stow
    ani-cli
    asciiquarium-transparent
    cbonsai
    unimatrix
    spotify
    kdePackages.kamera
    gnome-clocks
    decibels
    dconf-editor
    blueman
    zenity
    nitch
  ];
}
