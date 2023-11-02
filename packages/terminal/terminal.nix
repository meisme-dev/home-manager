{ libs, config, pkgs, ... }:

{

  imports =
    [
      ./kitty.nix
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
