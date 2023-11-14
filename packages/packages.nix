{ libs, config, pkgs, ... }:

{
  imports =
    [
      ./applications/applications.nix
      ./development/development.nix
      ./terminal/terminal.nix
      ./wayland/wayland.nix
    ];

  home.packages = with pkgs; [
    pamixer
    font-awesome
    material-symbols
    material-design-icons
  ];
}
