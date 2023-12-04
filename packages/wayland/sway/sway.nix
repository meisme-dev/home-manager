{ libs, config, pkgs, ... }:

{
  home.packages = with pkgs; [
    sway-contrib.grimshot
  ];

  wayland.windowManager.sway = {
    enable = true;
    package = (pkgs.swayfx.overrideAttrs (old: { passthru.providedSessions = [ "sway" ]; }));
    config = rec {
      terminal = "kitty";
      modifier = "Mod4";
      menu = "nwg-drawer";
      window.border = 0;
      gaps.inner = 12;
      bars = [];
      workspaceAutoBackAndForth = true;
      startup = [
        {command = "waybar";}
      ];
    };
    extraConfig = ''
      blur on
      blur_xray off
      blur_passes 2
      blur_radius 4
      corner_radius 12
      shadows on
      shadows_on_csd on
      shadow_blur_radius 20
      layer_effects "gtk-layer-shell" shadows disable;
    '';
  };

  # xdg.configFile."sway".source = ../sway;

  home.sessionVariables = {
    XDG_CURRENT_DESKTOP = "sway";
    XDG_SESSION_DESKTOP = "sway";
    XDG_SESSION_TYPE = "wayland";
    SDL_VIDEODRIVER = "wayland";
    CLUTTER_BACKEND = "wayland";
    MOZ_ENABLE_WAYLAND = "1";
    NIXOS_OZONE_WL = "1";
  };
}
 
