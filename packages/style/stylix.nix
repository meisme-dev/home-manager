{ libs, config, pkgs, ... }:

{
    imports = [ (import stylix).homeManagerModules.stylix ];
    stylix.wallpaper = ~/Pictures/bg.png;
}
