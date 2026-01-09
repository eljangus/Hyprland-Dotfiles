{
  description = "NixOS with home-manager btw";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-25.11";
    home-manager.url = "github:nix-community/home-manager/release-25.11";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    matugen = {
      url = "github:InioX/Matugen?ref=refs/tags/v3.1.0";
    };
  };
  outputs = inputs @ { self, nixpkgs, home-manager, ... }: {
    nixosConfigurations.nix-btw = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = { inherit inputs; };
      modules = [ 
        ./configuration.nix
        home-manager.nixosModules.home-manager
        {
          home-manager.users.elias = import ./home.nix;
          home-manager.users.elias-niri = import ./users/home-niri.nix;
        }
         ];
    };
  };
}
