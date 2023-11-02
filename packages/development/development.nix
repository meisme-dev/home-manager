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
    git
    gh
    helix
    jq
  ];
}
