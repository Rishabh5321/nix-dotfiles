{
  config,
  pkgs-unstable,
  host,
  inputs,
  username,
  options,
  ...
}: {
  environment.systemPackages = let
    cursor = pkgs-unstable.callPackage ../../pkgs/cursor.nix {};
  in
    with pkgs-unstable; [
      github-desktop
      heroic
      cursor
      #inputs.nix-software-center.packages.${system}.nix-software-center
      inputs.alejandra.defaultPackage.${system}
      lutris
      protonup-qt
      #sddm-astronaut
      rquickshare
      zed-editor
      wezterm
      vscode
      #plex
    ];
  #services.plex.enable = true;
  #services.hypridle.enable = true;
}
