{
  pkgs,
  config,
  ...
}: {
  /*
    services.desktopManager.plasma6.enable = true;
  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    #libsForQt5.kwalletmanager
    #kdePackages.kpkpass
    kwalletmanager
  ];
  */

  services.xserver = {
    enable = true;
    desktopManager = {
      xterm.enable = true;
      gnome.enable = true;
    };
    displayManager.gdm = {
      enable = true;
    };
  };

  environment.systemPackages = with pkgs; [
    dconf-editor
    gnome-tweaks
  ];
}
