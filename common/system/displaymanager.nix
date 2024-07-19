{
  pkgs,
  config,
  lib,
  wallpaper,
  username,
  ...
}:
{
  services.displayManager = {
    enable = true;
    sddm = {
      enable = true;
      wayland = {
        enable = true;
      };
      #  settings = {
      #    Autologin = {
      #      Session = "hyprland";
      #      User = "${username}";
      #    };
      #  };
      #theme = "${import ./pkgs/sddm-astronaut-theme.nix { inherit pkgs; }}";
      autoNumlock = true;
    };
  };

  services.libinput.enable = true;
}
