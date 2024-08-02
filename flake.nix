{
  description = "Your new nix config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager/release-24.05";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    stylix.url = "github:danth/stylix";
    stylix.inputs.nixpkgs.follows = "nixpkgs";
    spicetify-nix.url = "github:Gerg-L/spicetify-nix";
    spicetify-nix.inputs.nixpkgs.follows = "nixpkgs";
    alejandra.url = "github:kamadorueda/alejandra";
    alejandra.inputs.nixpkgs.follows = "nixpkgs";
    plasma-manager.url = "github:pjones/plasma-manager";
    plasma-manager.inputs.nixpkgs.follows = "nixpkgs";
    plasma-manager.inputs.home-manager.follows = "nixpkgs";
    #hyprland.url = "git+https://github.com/hyprwm/Hyprland?submodules=1";
    #hyprland-plugins.url = "github:hyprwm/hyprland-plugins";
    #hyprland-plugins.inputs.hyprland.follows = "hyprland";
    #impermanence.url = "github:nix-community/impermanence";
    fine-cmdline = {
      url = "github:VonHeikemen/fine-cmdline.nvim";
      flake = false;
    };
    darkmatter-grub-theme.url = "gitlab:VandalByte/darkmatter-grub-theme";
    darkmatter-grub-theme.inputs.nixpkgs.follows = "nixpkgs";
    #grub2-themes.url = "github:vinceliuice/grub2-themes";
    nix-gaming.url = "github:fufexan/nix-gaming";
  };

  outputs = {
    self,
    nixpkgs,
    nixpkgs-unstable,
    home-manager,
    spicetify-nix,
    alejandra,
    #impermanence,
    #grub2-themes,
    darkmatter-grub-theme,
    ...
  } @ inputs: let
    inherit (self) outputs;
    systems = ["x86_64-linux"];
    username = "rishabh";
    wallpaper = "wall48.jpg";
    flakeDir = "~/nix-dotfiles";
    pkgs-unstable = import nixpkgs-unstable {
      system = "x86_64-linux";
      config = {allowUnfree = true;};
    };
    devShells = forAllSystems (system: {
      lint = nixpkgs.legacyPackages.${system}.callPackage ./shells/lint.nix {};
    });
    formatter = forAllSystems (system: nixpkgs.legacyPackages."${system}".nixpkgs-fmt);
    forAllSystems = nixpkgs.lib.genAttrs systems;

    commonConfig = {hostname}: {
      specialArgs = {
        inherit inputs outputs username home-manager wallpaper spicetify-nix flakeDir pkgs-unstable;
      };
      modules = [
        ./hosts/${hostname}/configuration.nix
        darkmatter-grub-theme.nixosModule
        inputs.stylix.nixosModules.stylix
        home-manager.nixosModules.home-manager
        #impermanence.nixosModules.impermanence
        #grub2-themes.nixosModules.default
        {
          home-manager.extraSpecialArgs = {inherit inputs outputs username wallpaper flakeDir spicetify-nix pkgs-unstable;};
          home-manager.useUserPackages = true;
          home-manager.backupFileExtension =
            if hostname == "redmi"
            then "rebuild"
            else ".bak";
          home-manager.users.rishabh = import ./home-manager/home.nix;
        }
      ];
    };
  in {
    packages = forAllSystems (system: import ./pkgs nixpkgs.legacyPackages.${system});
    formatter = forAllSystems (system: nixpkgs.legacyPackages.${system}.alejandra);
    overlays = import ./overlays {inherit inputs;};
    nixosModules = import ./modules/nixos;
    homeManagerModules = import ./modules/home-manager;

    nixosConfigurations = {
      redmi = nixpkgs.lib.nixosSystem (commonConfig {hostname = "redmi";});
      dell = nixpkgs.lib.nixosSystem (commonConfig {hostname = "dell";});
    };
  };
}
