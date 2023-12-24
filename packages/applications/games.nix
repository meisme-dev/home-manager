{ libs, config, pkgs, ... }:

{
  home.packages = with pkgs; [
    prismlauncher
    goverlay
    mangohud
    bottles
  ];
}
