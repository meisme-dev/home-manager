{ libs, config, pkgs, ... }:

{
  home.packages = with pkgs; [
    kitty
  ];

  xdg.configFile."kitty".source = ../kitty;
}
