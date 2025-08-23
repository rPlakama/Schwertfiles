{ pkgs, ... }: {

  environment.systemPackages = with pkgs; [
    # C/C++
    clang-tools
    clang

    # LUA
    lua-language-server
    luaformatter
    lua

    # NIX
    nixd
    alejandra

    # FISH
    fish-lsp

    # Webdev
    typescript-language-server
  
    # MARKDOWN
    markdown-oxide

    # BASH
    bash-language-server
    shfmt

    # TYPST
    typst
    tinymist

    # MULTIPLE
    vscode-langservers-extracted
    devenv
    prettier
    gdb
    lldb
    hyprls
    direnv
  ];
}

