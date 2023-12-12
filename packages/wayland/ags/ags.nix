{ libs, config, pkgs, ags, ... }:

{
  programs.ags = { 
    enable = true; 
    configDir = ../ags;
  };
}
