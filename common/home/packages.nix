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
    wlr-randr
    wl-clipboard
    brightnessctl
    gnome-themes-extra
    wlsunset
    xwayland
    wlroots
    qt5ct
    libva
    hyprlock
    dconf
    wayland-utils
    wayland-protocols
    meson
  ];
}
