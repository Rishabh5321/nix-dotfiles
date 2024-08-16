{
  pkgs,
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
    gnome-themes-extra
    meson
    qt5ct
    wayland-protocols
    wayland-utils
    wlr-randr
    wlsunset
  ];
}
