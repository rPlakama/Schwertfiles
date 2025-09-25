{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # LUA
    lua-language-server
    # NIX
    nixd
    nixfmt
    # MARKDOWN
    markdown-oxide

    # TYPST
    typst
    tinymist
    typstyle

    # FISH
    fish-lsp
  ];
}
