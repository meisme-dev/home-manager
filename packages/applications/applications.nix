{ libs, config, pkgs, ... }:

{
  imports =
    [
      ./games.nix
      ./resolve.nix
      ./blender.nix
      ./djv.nix
    ];
    
  home.packages = with pkgs; [
    firefox
    looking-glass-client
    freetube
    gradience
    armcord
    kitty
    gnome.nautilus
    gnome.gnome-tweaks
  ];
}
