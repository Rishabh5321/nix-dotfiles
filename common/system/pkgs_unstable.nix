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
      cursor
      floorp
      github-desktop
      heroic
      inputs.alejandra.defaultPackage.${system}
      lutris
      obsidian
      protonup-qt
      rquickshare
      steam
      vscode
      wezterm
      zed-editor

      #inputs.nix-software-center.packages.${system}.nix-software-center
      #inputs.nixos-conf-editor.packages.${system}.nixos-conf-editor
      #plex
      #sddm-astronaut
    ];
  #services.plex.enable = true;
  #services.hypridle.enable = true;
}
