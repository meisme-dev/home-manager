{ libs, config, pkgs, ... }:

{
  imports =
    [
      ./games.nix
    ];
    
  home.packages = with pkgs; [
    firefox
    looking-glass-client
  ];
}
