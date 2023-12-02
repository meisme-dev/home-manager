{ libs, config, pkgs, ... }:

{

  imports =
    [
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
  
  home.sessionPath = [ "$HOME/.local/bin" ];
}
