{ ... }:

{

  programs.nvf = {
    enable = true;

    settings.vim = {
      lineNumberMode = "number";
      useSystemClipboard = true;

      options = {
        tabstop = 2;
        shiftwidth = 2;
        wrap = false;
      };

      git.enable = true;
      treesitter.context.enable = true;
      lsp = {
        inlayHints.enable = true;
        nvim-docs-view.enable = true;
        trouble.enable = true;
      };

      languages = {
        enableLSP = true;
        enableFormat = true;
        enableTreesitter = true;
        enableExtraDiagnostics = true;

        nix.enable = true;
        java.enable = true;
        clang.enable = true;
      };
    };
  };

}
