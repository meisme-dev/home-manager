{
  inputs = {
    nixpkgs.url = github:NixOS/nixpkgs/nixos-unstable;
    home-manager.url = github:nix-community/home-manager;
    stylix.url = github:danth/stylix;
  };

  outputs = { nixpkgs, home-manager, stylix, ... }: {
    homeConfigurations."meisme" = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages;
      modules = [ stylix.homeManagerModules.stylix ./home.nix ];
    };
  };
}