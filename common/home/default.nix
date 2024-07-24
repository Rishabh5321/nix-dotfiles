{
  config,
  pkgs,
  host,
  inputs,
  username,
  options,
  ...
}: {
  imports = [
    ./alacritty.nix
    ./btop.nix
    ./cava.nix
    #./chromium.nix
    #./conky.nix
    ./direnv.nix
    ./firefox.nix
    ./git.nix
    ./gnome-extensions.nix
    ./gnome.nix
    ./hypridle.nix
    ./hyprlock.nix
    #./plasma.nix
    #./idleinhibitor.nix
    ./kitty.nix
    ./packages.nix
    ./spicetify.nix
    #./starship.nix
    ./stylix.nix
    ./wezterm.nix
    ./zsh.nix
    #./xfce/xfce.nix

    # TEST
    ./eza.nix
    ./fzf.nix
  ];
}
