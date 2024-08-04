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
    gnome-themes-extra
    qt5ct
    wlsunset
    wlr-randr
    wayland-utils
    wayland-protocols
    meson
  ];
}
