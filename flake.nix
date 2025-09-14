{
  description = "Nixos Flake config";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
    home-manager.url = "github:nix-community/home-manager/release-25.05";
  };


  outputs = { self, nixpkgs, home-manager, ... }: {
    nixosConfigurations.mini-pc = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./configuration.nix
	./hardware/mini-pc.nix
	#./specific/mini-pc.nix
        home-manager.nixosModules.home-manager
      ];
    };
    nixosConfigurations.desktop = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./configuration.nix
	./hardware/desktop.nix
	./specific/desktop.nix
        home-manager.nixosModules.home-manager
      ];
    };
    nixosConfigurations.laptop = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./configuration.nix
	./hardware/laptop.nix
	#./specific/desktop.nix
        home-manager.nixosModules.home-manager
      ];
    };
  };
}
