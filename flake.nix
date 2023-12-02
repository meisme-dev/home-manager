{
  inputs = {
    nixpkgs.url = github:NixOS/nixpkgs/nixos-unstable;
    home-manager.url = github:nix-community/home-manager;
    stylix.url = github:danth/stylix;
  };

  outputs = { nixpkgs, home-manager, stylix, ... }: {
    defaultPackage.x86_64-linux = home-manager.defaultPackage.x86_64-linux;
  
    homeConfigurations."meisme" = home-manager.lib.homeManagerConfiguration {
      pkgs = import nixpkgs { system = "x86_64-linux"; };
      modules = [ stylix.homeManagerModules.stylix ./home.nix ./stylix.nix ];
    };
  };
}