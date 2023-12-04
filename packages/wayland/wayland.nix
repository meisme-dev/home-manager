{ libs, config, pkgs, ... }:

{
  imports =
    [
      ./sway/sway.nix
      ./waybar/waybar.nix
      ./eww/eww.nix
      ./ags/ags.nix
    ];
    
  home.packages = with pkgs; [
    wl-clipboard
    wlogout
    wl-color-picker
    nwg-drawer
    slurp
  ];
}
