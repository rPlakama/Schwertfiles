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

    # MULTIPLE
    devenv
    xwayland-satellite
    hyprls
  ];
}
