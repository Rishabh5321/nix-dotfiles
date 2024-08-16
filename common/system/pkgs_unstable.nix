{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    #inputs.nix-software-center.packages.${system}.nix-software-center
    #inputs.nixos-conf-editor.packages.${system}.nixos-conf-editor
    #plex
    #sddm-astronaut
  ];
  #services.plex.enable = true;
  #services.hypridle.enable = true;
}
