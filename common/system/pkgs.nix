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
      #amdvlk
      android-tools
      appimage-run
      atuin
      bat
      bitwarden-desktop
      bottles
      brave
      brightnessctl
      btop
      cava
      cliphist
      cmatrix
      cowsay
      cursor
      discord
      distrobox
      docker
      docker-compose
      duf
      eza
      fast-cli
      fastfetch
      ffmpeg
      figlet
      filezilla
      firefox
      floorp
      fzf
      gedit
      gh
      github-desktop
      git
      #file-roller
      glxinfo
      gnome-disk-utility
      gnome-system-monitor
      grim
      heroic
      htop
      hyprlock
      hyprpicker
      hyprshot
      imv
      inputs.alejandra.defaultPackage.${system}
      intel-gpu-tools # For Intel GPU tools
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
      lutris
      lxqt.lxqt-policykit
      mesa
      meson
      micro
      mpv
      nautilus
      ncdu
      neovide
      networkmanagerapplet
      nh
      ninja
      nixfmt-rfc-style
      nixos-generators
      nvtopPackages.full
      obsidian
      onlyoffice-bin_latest
      pavucontrol
      pciutils
      pciutils # For lspci command
      peaclock
      pfetch-rs
      pkg-config
      playerctl
      #plex-media-player
      polkit_gnome
      protonup-qt
      qbittorrent
      radeontop # For AMD GPU monitoring
      ranger
      resilio-sync
      ripgrep
      rquickshare
      slurp
      socat
      speedtest-cli
      spicetify-cli
      spotify
      spotdl
      steam
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
      vscode
      vulkan-tools # For vulkaninfo and other Vulkan tools
      wayland-pipewire-idle-inhibit
      wget
      wezterm
      wl-clipboard
      wlroots
      xfce.xfce4-pulseaudio-plugin
      yad
      ydotool
      zed-editor
      zinit
      zoxide
      zsh
      zsh-powerlevel10k
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
