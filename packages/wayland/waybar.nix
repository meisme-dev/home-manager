{ libs, config, pkgs, ... }:

{
  home.packages = with pkgs; [
    waybar
  ];

  xdg.configFile."waybar/config".source = ./waybar.config;

  xdg.configFile."waybar/style.css".source = ./waybar.style.css;
}
