{
  description = "Laptop and server config";

  inputs = {
    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-24.05";
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
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
    nixos-conf-editor.url = "github:snowfallorg/nixos-conf-editor";
    nix-software-center.url = "github:snowfallorg/nix-software-center";
    nix-github-actions = {
      url = "github:zhaofengli/nix-github-actions/matrix-name";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    #chaotic.url = "github:chaotic-cx/nyx/nyxpkgs-unstable";
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
    sops-nix.url = "github:Mic92/sops-nix";
  };

  outputs = {
    self,
    nixpkgs,
    nixpkgs-stable,
    sops-nix,
    home-manager,
    spicetify-nix,
    alejandra,
    #chaotic,
    #impermanence,
    #grub2-themes,
    darkmatter-grub-theme,
    ...
  } @ inputs: let
    inherit (self) outputs;
    systems = ["x86_64-linux"];
    username = "rishabh";
    wallpaper = "wall74.jpg";
    flakeDir = "~/nix-dotfiles";
    pkgs-stable = import nixpkgs-stable {
      system = "x86_64-linux";
      config = {allowUnfree = true;};
    };
    pkgs = import nixpkgs {
      system = "x86_64-linux";
      config = {allowUnfree = true;};
    };
    formatter = forAllSystems (system: nixpkgs.legacyPackages."${system}".nixpkgs-fmt);
    forAllSystems = nixpkgs.lib.genAttrs systems;

    commonConfig = {hostname}: {
      specialArgs = {
        inherit inputs outputs username home-manager wallpaper spicetify-nix flakeDir pkgs-stable pkgs;
      };
      modules = [
        ./hosts/${hostname}/configuration.nix
        darkmatter-grub-theme.nixosModule
        inputs.stylix.nixosModules.stylix
        home-manager.nixosModules.home-manager
        #sops-nix.nixosModules.sops
        #chaotic.nixosModules.default
        #impermanence.nixosModules.impermanence
        #grub2-themes.nixosModules.default
        {
          home-manager.extraSpecialArgs = {inherit inputs outputs username wallpaper flakeDir spicetify-nix pkgs-stable;};
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
    defaultPackage.x86_64-linux = self.packages.x86_64-linux.lint;
    nixosConfigurations = {
      redmi = nixpkgs.lib.nixosSystem (commonConfig {hostname = "redmi";});
      dell = nixpkgs.lib.nixosSystem (commonConfig {hostname = "dell";});
    };
  };
}
