{
  config,
  pkgs,
  host,
  inputs,
  username,
  options,
  ...
}: {
  environment.systemPackages = let
    cursor = pkgs.callPackage ../../pkgs/cursor.nix {};
  in
    with pkgs; [
      alacritty
      amdvlk
      android-tools
      appimage-run
      bat
      bitwarden-desktop
      bottles
      brave
      brightnessctl
      cursor
      btop
      cava
      cliphist
      cmatrix
      cowsay
      discord
      distrobox
      docker
      docker-compose
      duf
      eza
      fast-cli
      mesa
      fastfetch
      ffmpeg
      figlet
      filezilla
      firefox
      fzf
      gedit
      gh
      git
      #file-roller
      gnome-disk-utility
      gnome-system-monitor
      nautilus
      grim
      htop
      hyprlock
      hyprpicker
      hyprshot
      imv
      inxi
      jellyfin-media-player
      #kdePackages.kdeconnect-kde
      killall
      kodi-wayland
      lazycli
      lazydocker
      lazygit
      libnotify
      libreoffice
      libvirt
      lm_sensors
      lolcat
      lshw
      lxqt.lxqt-policykit
      meson
      micro
      mpv
      ncdu
      neovide
      networkmanagerapplet
      nh
      ninja
      nixfmt-rfc-style
      nixos-generators
      nvtopPackages.full
      onlyoffice-bin_latest
      pavucontrol
      peaclock
      polkit_gnome
      pciutils
      pfetch-rs
      pkg-config
      playerctl
      #plex-media-player
      qbittorrent
      ranger
      resilio-sync
      ripgrep
      slurp
      socat
      speedtest-cli
      spicetify-cli
      spotify
      spotdl
      stremio
      swappy
      swaynotificationcenter
      swww
      telegram-desktop
      tldr
      tree
      unetbootin
      unrar
      unzip
      uwufetch
      v4l-utils
      ventoy
      vim
      virt-viewer
      vlc
      wayland-pipewire-idle-inhibit
      wget
      wl-clipboard
      wlroots
      xfce.xfce4-pulseaudio-plugin
      yad
      ydotool
      floorp
      github-desktop
      heroic
      inputs.alejandra.defaultPackage.${system}
      lutris
      obsidian
      protonup-qt
      rquickshare
      steam
      vscode
      wezterm
      zed-editor
      zinit
      zoxide
      zsh
      zsh-powerlevel10k

      pciutils # For lspci command
      #mesa-utils # For glxinfo and other utilities
      vulkan-tools # For vulkaninfo and other Vulkan tools
      intel-gpu-tools # For Intel GPU tools
      radeontop # For AMD GPU monitoring
    ];
  #services.plex.enable = true;
  #services.hypridle.enable = true;

  fonts = {
    packages = with pkgs; [
      noto-fonts
      noto-fonts-emoji
      noto-fonts-cjk
      font-awesome
      symbola
      powerline
      nerdfonts
      material-icons
      (nerdfonts.override {fonts = ["Meslo"];})
    ];
  };
}