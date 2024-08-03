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
      # Terminal and Shell
      wezterm

      # Internet and Communication
      github-desktop
      rquickshare
      floorp

      # System Tools
      inputs.alejandra.defaultPackage.${system}

      # Development Tools
      obsidian
      vscode
      zed-editor

      # Gaming
      heroic
      lutris
      protonup-qt
      steam

      # Testing
      cursor
      #inputs.nix-software-center.packages.${system}.nix-software-center
      #inputs.nixos-conf-editor.packages.${system}.nixos-conf-editor
      #sddm-astronaut
      #plex
    ];
  #services.plex.enable = true;
  #services.hypridle.enable = true;
}
