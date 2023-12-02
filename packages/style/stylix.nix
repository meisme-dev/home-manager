{ libs, config, pkgs, stylix, ... }:

{
    stylix.image = ../../assets/bg.png;
    stylix.polarity = "dark";
    stylix.autoEnable = true;
    stylix.base16Scheme = ./scheme.yaml;
    stylix.opacity.applications = 0.75;
    stylix.opacity.terminal = 0.75;
    stylix.opacity.desktop = 0.75;
    stylix.opacity.popups = 0.75;
    stylix.fonts.sizes.applications = 10;
    stylix.targets.kitty.variant256Colors = true;
}
