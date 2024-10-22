{ pkgs
, options
, ...
}: {
  programs = {
    firefox.enable = true;
    hyprland = {
      enable = true;
      package = pkgs.hyprland;
      xwayland.enable = true;
    };
    dconf.enable = true;
    #seahorse.enable = lib.mkForce true;
    fuse.userAllowOther = true;
    mtr.enable = true;
    gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
    };
    virt-manager.enable = true;
    steam = {
      enable = true;
      gamescopeSession.enable = true;
      remotePlay.openFirewall = true;
      dedicatedServer.openFirewall = true;
    };
    #hyprland = {
    #  enable = true;
    #  package = pkgs.hyprland;
    #  xwayland.enable = true;
    #};
    thunar = {
      enable = true;
      plugins = with pkgs.xfce; [
        thunar-archive-plugin
        thunar-volman
      ];
    };
    gamemode.enable = true;
  };

  # services.gnome.gnome-keyring = {
  #   enable = true;
  # };

  # services = {
  #   nfs.server.enable = true;
  # };

  networking.timeServers = options.networking.timeServers.default ++ [ "pool.ntp.org" ];

  virtualisation.docker = {
    enable = true;
    rootless = {
      enable = true;
      setSocketVariable = true;
    };
    storageDriver = "btrfs";
  };
}
