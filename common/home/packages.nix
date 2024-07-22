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
  ];
}
