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

    # NodeJS
    nodejs
    yarn
  
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
    prettier
    gdb
    lldb
    hyprls
    direnv
  ];
}

