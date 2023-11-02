{ libs, config, pkgs, ... }:

{
  imports =
    [
      ./sway.nix
      ./waybar.nix
    ];
    
  home.packages = with pkgs; [
    wl-clipboard
    wlogout
  ];
}
