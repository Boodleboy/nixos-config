{
  description = "Nixos Flake config";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
  };


  outputs = { self, nixpkgs, ... }: {
    nixosConfigurations.mini-pc = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./configuration.nix
	./hardware/mini-pc.nix
	#./specific/mini-pc.nix
      ];
    };
    nixosConfigurations.desktop = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./configuration.nix
	./hardware/desktop.nix
	./specific/desktop.nix
      ];
    };
    nixosConfigurations.laptop = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./configuration.nix
	./hardware/laptop.nix
	./bluetooth.nix
	#./specific/desktop.nix
      ];
    };
  };
}
