{
  pkgs,
  lib,
  inputs,
  spicetify-nix,
  ...
}: {
  stylix.targets.rofi.enable = false;
  gtk = {
    iconTheme = {
      name = "Papirus";
      package = pkgs.papirus-icon-theme;
    };
    gtk3.extraConfig = {
      gtk-application-prefer-dark-theme = 1;
    };
    gtk4.extraConfig = {
      gtk-application-prefer-dark-theme = 1;
    };
  };
  #qt = {
  #  enable = true;
  #  style.name = "Adw-gtk3";
  #  platformTheme.name = "gtk3";
  #};

  xdg.portal = {
    enable = true;
    wlr.enable = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-gtk
      pkgs.xdg-desktop-portal
    ];
    configPackages = [
      pkgs.xdg-desktop-portal-gnome
      pkgs.xdg-desktop-portal-gtk
      pkgs.xdg-desktop-portal-hyprland
      pkgs.xdg-desktop-portal
    ];
  };

  programs.gpg.enable = true;

  services.gpg-agent.enable = true;
}
