{
  config,
  pkgs,
  host,
  inputs,
  username,
  options,
  flakeDir,
  ...
}: {
  imports = [
    ./bluetooth.nix
    ./boot.nix
    ./cache.nix
    ./desktop_env.nix
    ./displaymanager.nix
    ./gaming.nix
    ./graphics.nix
    ./locale.nix
    ./nh.nix
    ./nix_settings.nix
    ./pkgs.nix
    ./pkgs_stable.nix
    #./pkgs_unstable.nix
    #./polkit.nix
    ./program.nix
    ./proton.nix
    #./sound.nix
    ./stylix.nix
    ./swap.nix
    ./syncthing.nix
    #./upgrade.nix
    ./users.nix

    #./sops.nix
  ];
}
