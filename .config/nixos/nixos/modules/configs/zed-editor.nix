{ ... }: {

programs.zed-editor = {
  enable = true;
  extensions = [ "nix" "latex" ];
  userSettings = {
    vim_mode = true;
    };
  };
}

