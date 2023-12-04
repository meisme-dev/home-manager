{
  inputs = {
    nixpkgs.url = github:NixOS/nixpkgs/nixos-unstable;
    home-manager.url = github:nix-community/home-manager;
    stylix.url = github:meisme-dev/stylix;
    ags.url = "github:Aylur/ags";
  };

  outputs = { nixpkgs, home-manager, stylix, ags, ... }: {
    defaultPackage.x86_64-linux = home-manager.defaultPackage.x86_64-linux;
  
    homeConfigurations."meisme" = home-manager.lib.homeManagerConfiguration {
      pkgs = import nixpkgs { system = "x86_64-linux"; };
      modules = [ stylix.homeManagerModules.stylix ags.homeManagerModules.default ./home.nix ];
    };
  };
}
