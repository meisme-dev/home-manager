{ libs, config, pkgs, ... }:

{
  home.packages = with pkgs; [
    clang-tools
    meson
  ];
}