{ libs, config, pkgs, ... }:

{
  imports =
    [
      ./c.nix
      ./haskell.nix
      ./nixlang.nix
      ./vscode.nix
    ];
    
  home.packages = with pkgs; [
    nodePackages.typescript-language-server
    git
    gh
    helix
    jq
  ];
}
