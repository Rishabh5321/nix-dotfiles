{
  config,
  pkgs,
  host,
  inputs,
  username,
  options,
  ...
}: {
  environment.systemPackages =
    #let
    #  cursor = pkgs.callPackage ./pkgs/cursor.nix { };
    #in
    with pkgs; [
      # Terminal and Shell
      alacritty
      figlet
      fzf
      lazygit
      micro
      nh
      ranger
      vim
      zoxide
      zinit
      zsh
      zsh-powerlevel10k

      # Internet and Communication
      brave
      firefox
      jellyfin-media-player
      kdePackages.kdeconnect-kde
      qbittorrent
      resilio-sync
      telegram-desktop
      wget

      # System Tools
      android-tools
      bitwarden-desktop
      cliphist
      distrobox
      docker
      eza
      fast-cli
      fastfetch
      ffmpeg
      gh
      hyprlock
      hyprshot
      gnome.gnome-disk-utility
      gnome.gnome-system-monitor
      gnome.nautilus
      kodi-wayland
      lazycli
      lazydocker
      libreoffice
      nixos-generators
      onlyoffice-bin_latest
      #polkit_gnome
      speedtest-cli
      tldr
      wayland-pipewire-idle-inhibit
      wlroots
      xfce.xfce4-pulseaudio-plugin
      unetbootin
      ventoy

      # Multimedia
      cava
      filezilla
      plex-media-player
      stremio
      vlc
      peaclock
      spicetify-cli
      spotdl

      # Development Tools
      bottles
      pfetch-rs
      uwufetch

      # Miscellaneous
      btop
      #floorp
      #google-chrome
      #prismlauncher
      #spicetify-cli

      # Unsorted/Commented
      #cursor
      #inputs.wezterm.packages.${pkgs.system}.default
      #plex
      #where-is-my-sddm-theme
      #pkgs.libsForQt5.qt5.qtgraphicaleffects
    ];
  #services.plex.enable = true;
  #services.hypridle.enable = true;

  fonts = {
    packages = with pkgs; [
      noto-fonts-emoji
      noto-fonts-cjk
      font-awesome
      symbola
      powerline
      material-icons
    ];
  };
}
