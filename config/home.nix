{ config, pkgs, ... }:

{

  home.username = "pontus";
  home.homeDirectory = "/home/pontus";

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  home.packages = with pkgs; [
    cowsay
  ];

  programs = {
    git = {
      enable = true;
      # user name & email from secrets?
    };
    neovim = {
      enable = true;
      defaultEditor = true;
      extraConfig = ''
        set tabstop=2
        set shiftwidth=2
        set expandtab
        set number
      '';
    };
  };

  home.stateVersion = "24.11";

  programs.home-manager.enable = true;

}
