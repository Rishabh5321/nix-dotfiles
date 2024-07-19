{ pkgs, config, ... }:
{
  services.desktopManager.plasma6.enable = true;
  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    #libsForQt5.kwalletmanager
    #kdePackages.kpkpass
    kwalletmanager
  ];
}
