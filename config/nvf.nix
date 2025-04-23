{ ... }:

{

  programs.nvf = {
    enable = true;

    settings.vim = {

      options = {
        tabstop = 2;
        shiftwidth = 2;
        wrap = false;
      };

      lineNumberMode = "number";

      languages = {
        enableLSP = true;
        enableTreesitter = true;

        nix.enable = true;
      };
    };
  };

}
