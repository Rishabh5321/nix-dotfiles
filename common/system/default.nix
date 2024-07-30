{
  config,
  pkgs,
  host,
  inputs,
  username,
  options,
  flakeDir,
  ...
}: {
  imports = [
    # Bluetooth Support
    ./bluetooth.nix

    # Boot Configuration
    ./boot.nix

    # Cache Configuration
    ./cache.nix

    # # Desktop Environment Configuration
    ./desktop_env.nix

    # # Display Manager Configuration
    ./displaymanager.nix

    # # Gaming Configuration
    ./gaming.nix

    # # Graphics Configuration
    ./graphics.nix

    # # Locale Configuration
    ./locale.nix

    # # Nix Settings
    ./nix_settings.nix

    # # Polkit Configuration
    ./polkit.nix

    #./persistance.nix

    # # Stable Packages
    ./pkgs_stable.nix

    # # Unstable Packages
    ./pkgs_unstable.nix

    # # Program Configuration
    ./program.nix

    # # Proton Configuration
    ./proton.nix

    # # Sound Configuration
    ./sound.nix

    # # Stylix Configuration
    ./stylix.nix

    # # Syncthing Configuration
    ./syncthing.nix

    # # Swap Configuration
    #./swap.nix

    # # Upgrade Configuration
    ./upgrade.nix

    # # Users Configuration
    ./users.nix

    # Xfce Configuration
    #./xfce.nix
  ];

  environment.systemPackages = with pkgs; [
    vim
    wget
    killall
    eza
    git
    cmatrix
    lolcat
    fastfetch
    htop
    libvirt
    firefox
    lxqt.lxqt-policykit
    lm_sensors
    unzip
    unrar
    libnotify
    v4l-utils
    ydotool
    gnome.gnome-disk-utility
    duf
    ncdu
    wl-clipboard
    pciutils
    gedit
    ffmpeg
    socat
    cowsay
    ripgrep
    lshw
    bat
    pkg-config
    meson
    docker-compose
    hyprpicker
    ninja
    brightnessctl
    virt-viewer
    swappy
    appimage-run
    networkmanagerapplet
    yad
    inxi
    playerctl
    nh
    nixfmt-rfc-style
    discord
    libvirt
    swww
    grim
    slurp
    gnome.file-roller
    swaynotificationcenter
    imv
    mpv
    pavucontrol
    tree
    spotify
    neovide
    #greetd.tuigreet
  ];

  environment.variables = {
    FLAKE = "${flakeDir}";
    POLKIT_BIN = "${pkgs.polkit_gnome}/libexec/polkit-gnome-authentication-agent-1";
  };
}
