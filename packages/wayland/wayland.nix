{ libs, config, pkgs, ... }:

{
  imports =
    [
      ./sway/sway.nix
      ./waybar/waybar.nix
      ./eww/eww.nix
    ];
    
  home.packages = with pkgs; [
    wl-clipboard
    wlogout
    wl-color-picker
  ];
}
