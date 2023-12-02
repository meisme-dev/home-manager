{ libs, config, pkgs, ... }:

{
    imports = [ (import stylix).homeManagerModules.stylix ];
    stylix.wallpaper = ../../assets/bg.png;
}
