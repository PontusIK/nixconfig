{ config, pkgs, ... }:

{

  home.username = "pontus";
  home.homeDirectory = "/home/pontus";

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  home.stateVersion = "24.11";

  programs.home-manager.enable = true;

}
