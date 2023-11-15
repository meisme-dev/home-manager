{ libs, config, pkgs, ... }:

{
  home.packages = with pkgs; [
    sway-contrib.grimshot
  ];

  xdg.configFile."sway".source = ../sway;

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
