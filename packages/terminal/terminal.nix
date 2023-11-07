{ libs, config, pkgs, ... }:

{

  imports =
    [
      ./kitty/kitty.nix
      ./zsh.nix
    ];

  home.packages = with pkgs; [
    fzf
    ripgrep
    bat
    tealdeer
    btop
  ];

  home.sessionVariables = {
    EDITOR = "helix";
  };
}
