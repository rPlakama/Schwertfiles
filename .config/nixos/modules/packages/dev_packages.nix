{ pkgs, ... }: {

  environment.systemPackages = with pkgs; [
    # RUST
    rust-analyzer
    cargo
    rustc

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
  ];
}

