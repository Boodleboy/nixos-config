{
  description = "Nixos Flake config";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
    home-manager.url = "github:nix-community/home-manager/release-25.05";
    sops-nix.url = "github:Mic92/sops-nix";
  };


  outputs = { self, nixpkgs, home-manager, sops-nix, ... }: {
    nixosConfigurations.mini-pc = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./configuration.nix
	./hardware/mini-pc.nix
	./specific/mini-pc.nix
        home-manager.nixosModules.home-manager
	sops-nix.nixosModules.sops
      ];
    };
    nixosConfigurations.desktop = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./configuration.nix
	./specific/desktop.nix
        home-manager.nixosModules.home-manager
	sops-nix.nixosModules.sops
      ];
    };
  };
}
