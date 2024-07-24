{
  pkgs,
  config,
  username,
  wallpaperDir,
  ...
}: let
  inherit (import ../system/variables.nix) wallpaperDir;
in {
  home.packages = with pkgs; [
    waybar
    (import ../../pkgs/wall-selector.nix {
      inherit pkgs;
      inherit wallpaperDir;
    })
    hyprshot
    hyprpicker
    # hyprcursor
    xdg-desktop-portal-hyprland
    wlr-randr
    wl-clipboard
    brightnessctl
    gnome-themes-extra
    wlsunset
    xwayland
    xdg-desktop-portal-gtk
    wlroots
    qt5ct
    libva
    dconf
    wayland-utils
    wayland-protocols
    meson
  ];
}
