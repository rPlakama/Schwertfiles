{pkgs, ...}: {
  # -- LSP's, Formatters, Debuggers, Languages & ETC. -- #
  environment.systemPackages = with pkgs; [
    # -- LSP's -- #
    nixd
    hyprls
    texlab
    clang-tools
    bash-language-server
    rust-analyzer
    markdown-oxide
    lua-language-server
    vscode-langservers-extracted
    # -- Formatters -- #
    shfmt
    prettier
    alejandra
    luaformatter
    # -- Debuggers -- #
    gdb
    lldb
    # -- Languages -- #
    lua
    texliveTeTeX
    cargo
    # -- Compilers -- #
    rustc
    clang
  ];
}
