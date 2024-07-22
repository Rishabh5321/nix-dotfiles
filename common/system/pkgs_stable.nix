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
      alacritty
      android-tools
      bitwarden-desktop
      bottles
      #brave
      btop
      cava
      #cursor
      cliphist
      distrobox
      eza
      filezilla
      fast-cli
      fastfetch
      ffmpeg
      firefox
      #floorp
      figlet
      fzf
      gh
      hyprlock
      hyprshot
      gnome.gnome-disk-utility
      gnome.gnome-system-monitor
      gnome.nautilus
      #google-chrome
      jellyfin-media-player
      #inputs.wezterm.packages.${pkgs.system}.default
      kodi-wayland
      lazycli
      lazydocker
      libreoffice
      nixos-generators
      micro
      nh
      obsidian
      onlyoffice-bin_latest
      pfetch-rs
      peaclock
      plex-media-player
      polkit_gnome
      #prismlauncher
      qbittorrent
      ranger
      resilio-sync
      spicetify-cli
      spotdl
      speedtest-cli
      #spicetify-cli
      stremio
      telegram-desktop
      tldr
      uwufetch
      vlc
      wayland-pipewire-idle-inhibit
      wget
      wlroots
      xfce.xfce4-pulseaudio-plugin
      vim
      zoxide
      zinit
      zsh
      zsh-powerlevel10k
      unetbootin
      ventoy

      #server
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
