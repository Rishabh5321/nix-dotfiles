{
  pkgs,
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
  #services.desktopManager.cosmic.enable = true;
  #services.displayManager.cosmic-greeter.enable = true;

  environment.systemPackages = with pkgs; [
    dconf-editor
    gnome-tweaks
  ];
}
