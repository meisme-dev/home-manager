{ libs, config, pkgs, ... }:

{
  home.packages = with pkgs; [
    eww-wayland
    jq
  ];

  xdg.configFile."eww".source = ../eww;
}
