{ libs, config, pkgs, ... }:

{
  home.packages = with pkgs; [
    sway-contrib.grimshot
  ];

  xdg.configFile."sway/config".source = ./sway.config;
}
