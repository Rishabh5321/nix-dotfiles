{
  pkgs,
  ...
}: {
  gtk = {
    iconTheme = {
      name = "Dracula";
      package = pkgs.dracula-icon-theme;
    };
    gtk3.extraConfig = {
      gtk-application-prefer-dark-theme = 1;
    };
    gtk4.extraConfig = {
      gtk-application-prefer-dark-theme = 1;
    };
  };
  qt = {
    enable = true;
    style.name = "Adw-gtk3";
    platformTheme.name = "gtk3";
  };
  stylix.targets.waybar.enable = false;
  stylix.targets.rofi.enable = false;
  stylix.targets.hyprland.enable = false;

  programs.gpg.enable = true;

  services.gpg-agent.enable = true;
}
