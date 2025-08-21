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

    # Webdev
    typescript-language-server

  
    # MARKDOWN
    markdown-oxide

    # JAVA
    zulu24
    jdt-language-server

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

