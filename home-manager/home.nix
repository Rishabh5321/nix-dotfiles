# This is your home-manager configuration file
# Use this to configure your home environment (it replaces ~/.config/nixpkgs/home.nix)
{
  inputs,
  outputs,
  lib,
  config,
  pkgs,
  username,
  host,
  ...
}: {
  # You can import other home-manager modules here
  imports = [
    # If you want to use modules your own flake exports (from modules/home-manager):
    # outputs.homeManagerModules.example

    # Or modules exported from other flakes (such as nix-colors):
    # inputs.nix-colors.homeManagerModules.default

    # You can also split up your configuration and import pieces of it here:
    # ./nvim.nix
    ../common/home
    ../common/home/rofi/rofi.nix
    ../common/home/rofi/config-emoji.nix
    ../common/home/rofi/config-long.nix
    ../common/home/rofi/config-wallpaper.nix
    ../common/home/hyprland/emoji.nix
    ../common/home/hyprland/neovim.nix
    ../common/home/hyprland/hyprland.nix
    ../common/home/hyprland/swaync.nix
    ../common/home/hyprland/waybar.nix
    ../common/home/hyprland/wlogout.nix
  ];
  nixpkgs = {
    # You can add overlays here
    overlays = [
      # Add overlays your own flake exports (from overlays and pkgs dir):
      outputs.overlays.additions
      outputs.overlays.modifications
      outputs.overlays.unstable-packages

      # You can also add overlays exported from other flakes:
      # neovim-nightly-overlay.overlays.default

      # Or define it inline, for example:
      # (final: prev: {
      #   hi = final.hello.overrideAttrs (oldAttrs: {
      #     patches = [ ./change-hello-to-hi.patch ];
      #   });
      # })
    ];
    # Configure your nixpkgs instance
    config = {
      # Disable if you don't want unfree packages
      allowUnfree = true;
    };
  };
  #home-manager.backupFileExtension = ".rebuild";
  # TODO: Set your username
  home = {
    username = "rishabh";
    homeDirectory = "/home/rishabh";
  };

  home.file."Pictures/Wallpapers" = {
    source = ../wallpapers;
    recursive = true;
  };
  home.file.".config/fastfetch" = {
    source = ../common/home/fastfetch;
    recursive = true;
  };
  home.file.".config/wlogout/icons" = {
    source = ../common/home/hyprland/wlogout;
  };
  home.file.".config/swappy/config".text = ''
    [Default]
    save_dir=/home/${username}/Pictures/Screenshots
    save_filename_format=screenshot-%Y%m%d-%H%M%S.png
    show_panel=false
    line_size=5
    text_size=20
    text_font=Ubuntu
    paint_mode=brush
    early_exit=true
    fill_shape=false
  '';
  # home.file.".config/hypr/hyprlock.conf" = {
  #   source = ../common/home/hyprland/hyprlock.conf;
  # };

  # Create XDG Dirs
  xdg = {
    userDirs = {
      enable = true;
      createDirectories = true;
    };
  };

  home.packages = [
    (import ../pkgs/rofi-launcher.nix {inherit pkgs;})
    (import ../pkgs/emopicker9000.nix {inherit pkgs;})
    (import ../pkgs/task-waybar.nix {inherit pkgs;})
    #(import ../pkgs/squirtle.nix {inherit pkgs;})
    #(import ../pkgs/nvidia-offload.nix { inherit pkgs; })
    (import ../pkgs/wallsetter.nix {
      inherit pkgs;
      inherit username;
    })
    (import ../pkgs/web-search.nix {inherit pkgs;})
    (import ../pkgs/rofi-launcher.nix {inherit pkgs;})
    (import ../pkgs/screenshootin.nix {inherit pkgs;})
    (import ../pkgs/list-hypr-bindings.nix {
      inherit pkgs;
      inherit host;
    })
    #(import ../pkgs/startup.nix {inherit pkgs;})
    #(import ../pkgs/battery.nix {inherit pkgs;})
  ];

  dconf.settings = {
    "org/virt-manager/virt-manager/connections" = {
      autoconnect = ["qemu:///system"];
      uris = ["qemu:///system"];
    };
  };

  # Add stuff for your user as you see fit:
  # programs.neovim.enable = true;
  # home.packages = with pkgs; [ steam ];

  # Enable home-manager and git
  programs.home-manager.enable = true;
  programs.git.enable = true;

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";
  home.enableNixpkgsReleaseCheck = false;
  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "24.11";
}
