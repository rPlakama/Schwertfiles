{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    # LUA
    lua-language-server
    # NIX
    nixd
    alejandra

    # FISH
    fish-lsp

    # MARKDOWN
    markdown-oxide

    # BASH
    bash-language-server
    shfmt

    # TYPST
    typst
    tinymist

    # MULTIPLE
    devenv
    hyprls
    direnv
  ];
}
