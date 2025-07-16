{ pkgs, ... }: {

# -- LSP's, Formatters, Debuggers, Languages & ETC. -- #
environment.systemPackages = with pkgs; [

  # -- LSP's -- #
  nixd
  hyprls
  fish-lsp
  clang-tools
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
  cargo
  # -- Compiler -- #
  rustc
  clang
  ];
}
