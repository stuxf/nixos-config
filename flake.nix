{
  description = "NixOS configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
    nixos-hardware.url = "github:NixOS/nixos-hardware/46d00f2";
    # home-manager, used for managing user configuration
    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      # The `follows` keyword in inputs is used for inheritance.
      # Here, `inputs.nixpkgs` of home-manager is kept consistent with
      # the `inputs.nixpkgs` of the current flake,
      # to avoid problems caused by different versions of nixpkgs.
      inputs.nixpkgs.follows = "nixpkgs";
    };
    catppuccin.url = "github:catppuccin/nix";
    # stylix.url = "github:danth/stylix";
  };

  outputs = inputs @ {
    nixpkgs,
    home-manager,
    catppuccin,
    # stylix,
    nixos-hardware,
    ...
  }: {
    nixosConfigurations = {
      donk = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./nixos/configuration.nix
          catppuccin.nixosModules.catppuccin
          # stylix.nixosModules.stylix

          # make home-manager as a module of nixos
          # so that home-manager configuration will be deployed automatically when executing `nixos-rebuild switch`
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.backupFileExtension = ".backup";

            home-manager.users.user = {
              # stylix.enable = true;
              # stylix.autoEnable = false;
              # stylix.targets.vesktop.enable = true;
              # stylix.image = ./wallpaper.png;
              # stylix.targets.gnome.enable = true;
              # stylix.targets.gtk.enable = true;
              # stylix.targets.firefox.enable = true;

              imports = [
                ./home
                catppuccin.homeManagerModules.catppuccin
              ];
            };

            # Optionally, use home-manager.extraSpecialArgs to pass arguments to home.nix
          }
          nixos-hardware.nixosModules.asus-zephyrus-ga401
        ];
      };
    };
  };
}
