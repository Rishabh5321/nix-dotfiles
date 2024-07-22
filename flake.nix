{
  description = "Your new nix config";

  inputs = {
    # Nixpkgs
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";
    # You can access packages and modules from different nixpkgs revs
    # at the same time. Here's an working example:
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";
    # Also see the 'unstable-packages' overlay at 'overlays/default.nix'.

    # Home manager
    home-manager.url = "github:nix-community/home-manager/release-24.05";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    stylix.url = "github:danth/stylix";
    stylix.inputs.nixpkgs.follows = "nixpkgs";

    spicetify-nix = {
      url = "github:Gerg-L/spicetify-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    alejandra.url = "github:kamadorueda/alejandra";
    alejandra.inputs.nixpkgs.follows = "nixpkgs";

    plasma-manager = {
      url = "github:pjones/plasma-manager";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.home-manager.follows = "nixpkgs";
    };

    hyprland.url = "git+https://github.com/hyprwm/Hyprland?submodules=1";
    # hyprland.inputs.nixpkgs.follows = "nixpkgs";
    hyprland-plugins = {
      url = "github:hyprwm/hyprland-plugins";
      inputs.hyprland.follows = "hyprland";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    impermanence.url = "github:nix-community/impermanence";

    fine-cmdline = {
      url = "github:VonHeikemen/fine-cmdline.nvim";
      flake = false;
    };

    #sddm-sugar-candy-nix = {
    #  url = "gitlab:Zhaith-Izaliel/sddm-sugar-candy-nix";
    #  # Optional, by default this flake follows nixpkgs-unstable.
    #  inputs.nixpkgs.follows = "nixpkgs";
    #};
  };

  outputs = {
    self,
    nixpkgs,
    nixpkgs-unstable,
    home-manager,
    spicetify-nix,
    alejandra,
    impermanence,
    #sddm-sugar-candy-nix,
    ...
  } @ inputs: let
    inherit (self) outputs;
    # Supported systems for your flake packages, shell, etc.
    systems = [
      "x86_64-linux"
    ];
    username = "rishabh";
    wallpaper = "wall39.png";
    pkgs-unstable = import nixpkgs-unstable {
      system = "x86_64-linux";
      config = {
        allowUnfree = true;
        allowUnfreePredicate = _: true;
      };
    };
    # This is a function that generates an attribute by calling a function you
    # pass to it, with each system as an argument
    forAllSystems = nixpkgs.lib.genAttrs systems;
  in {
    # Your custom packages
    # Accessible through 'nix build', 'nix shell', etc
    packages = forAllSystems (system: import ./pkgs nixpkgs.legacyPackages.${system});
    # Formatter for your nix files, available through 'nix fmt'
    # Other options beside 'alejandra' include 'nixpkgs-fmt'
    formatter = forAllSystems (system: nixpkgs.legacyPackages.${system}.alejandra);

    # Your custom packages and modifications, exported as overlays
    overlays = import ./overlays {inherit inputs;};
    # Reusable nixos modules you might want to export
    # These are usually stuff you would upstream into nixpkgs
    nixosModules = import ./modules/nixos;
    # Reusable home-manager modules you might want to export
    # These are usually stuff you would upstream into home-manager
    homeManagerModules = import ./modules/home-manager;

    # NixOS configuration entrypoint
    # Available through 'nixos-rebuild --flake .#your-hostname'
    nixosConfigurations = {
      # FIXME replace with your hostname
      redmi = nixpkgs.lib.nixosSystem {
        specialArgs = {
          inherit inputs;
          inherit outputs;
          inherit username;
          inherit home-manager;
          inherit wallpaper;
          inherit spicetify-nix;
          inherit pkgs-unstable;
        };
        modules = [
          # > Our main nixos configuration file <
          ./hosts/redmi/configuration.nix
          inputs.stylix.nixosModules.stylix
          home-manager.nixosModules.home-manager
          impermanence.nixosModules.impermanence
          #sddm-sugar-candy-nix.nixosModules.default
          {
            nixpkgs = {
              overlays = [
                #sddm-sugar-candy-nix.overlays.default
              ];
            };
            home-manager.extraSpecialArgs = {
              inherit inputs;
              inherit outputs;
              inherit username;
              inherit wallpaper;
              inherit spicetify-nix;
              inherit pkgs-unstable;
            };
            home-manager.useUserPackages = true;
            home-manager.backupFileExtension = "rebuild";
            home-manager.users.rishabh = import ./home-manager/home.nix;
          }
        ];
      };
      dell = nixpkgs.lib.nixosSystem {
        specialArgs = {
          inherit inputs;
          inherit outputs;
          inherit username;
          inherit wallpaper;
          inherit spicetify-nix;
          inherit pkgs-unstable;
        };
        modules = [
          # > Our main nixos configuration file <
          ./hosts/dell/configuration.nix
          inputs.stylix.nixosModules.stylix
          impermanence.nixosModules.impermanence
          home-manager.nixosModules.home-manager
          #sddm-sugar-candy-nix.nixosModules.default
          {
            home-manager.extraSpecialArgs = {
              inherit inputs;
              inherit outputs;
              inherit username;
              inherit wallpaper;
              inherit spicetify-nix;
              inherit pkgs-unstable;
            };
            home-manager.useUserPackages = true;
            home-manager.backupFileExtension = ".bak";
            home-manager.users.rishabh = import ./home-manager/home.nix;
          }
        ];
      };
    };
  };
}
