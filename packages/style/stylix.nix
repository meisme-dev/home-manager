{ libs, config, pkgs, stylix, ... }:

{
    stylix.polarity = "dark";
    stylix.autoEnable = true;
    stylix.base16Scheme = ./scheme.yaml;
}
