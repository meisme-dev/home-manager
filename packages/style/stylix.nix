{ libs, config, pkgs, stylix, ... }:

{
  stylix.image = ../../assets/bg.png;
  stylix.polarity = "dark";
  stylix.autoEnable = true;
  stylix.opacity.applications = 0.75;
  stylix.opacity.terminal = 0.75;
  stylix.opacity.desktop = 0.75;
  stylix.opacity.popups = 0.75;
  stylix.fonts.sizes.applications = 10;
  stylix.targets.kitty.variant256Colors = true;

 stylix.override = {
   base00 = "181c1e";
   base01 = "242a2d";
   base02 = "2f5861";
   base03 = "2f5861";
   base04 = "242a2d";
   base05 = "51e0ff";
   base06 = "51e0ff";
   base07 = "00ffff";
   base08 = "00ffff";
   base09 = "85ffc4";
   base0A = "85c7d6";
   base0B = "6cf4a3";
   base0C = "8ae6fb";
   base0D = "86d798";
   base0E = "96d9ff";
   base0F = "ffee96";
 };

  programs.vscode.userSettings = {
    "workbench.colorCustomizations" = {
      "[Stylix]" = {
        "statusBar.background" = "#${config.lib.stylix.colors.base01}";
        "tab.unfocusedActiveForeground" = "#${config.lib.stylix.colors.base0A}";
        "tab.unfocusedInactiveForeground" = "#${config.lib.stylix.colors.base0A}";
        "icon.foreground" = "#${config.lib.stylix.colors.base0A}";
        "statusBarItem.remoteBackground" = "#${config.lib.stylix.colors.base02}";
        "button.foreground" = "#${config.lib.stylix.colors.base04}";
        "button.secondaryForeground" = "#${config.lib.stylix.colors.base04}";
        "activityBarBadge.foreground" = "#${config.lib.stylix.colors.base04}";
        "editor.findMatchHighlightBackground" = "#${config.lib.stylix.colors.base02}";
      };
    };
  };
}
