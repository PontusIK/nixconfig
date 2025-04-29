{ pkgs, ... }:

{
  imports = [./nvf.nix];

  home.username = "pontus";
  home.homeDirectory = "/home/pontus";

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  home.packages = with pkgs; [
    fastfetch
    brave
    tree
    xclip
  ];

  programs = {
    git = {
      enable = true;
      extraConfig.core.askPass = "";
      # user name & email from secrets?
    };
    ghostty.enable = true;
  };

  home.stateVersion = "24.11";

  programs.home-manager.enable = true;

}
