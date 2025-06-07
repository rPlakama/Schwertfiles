{...}: {
  programs.zed-editor = {
    enable = true;
    userSettings = {
      vim_mode = true;
      features = {
        copilot = false;
      };
    };
    extensions = [
      "nix"
    ];
    userKeymaps = [
      {
        context = "Workspace";
        bindings = {
          "ctrl-shift-t" = "workspace::NewTerminal";
        };
      }
    ];
  };
}
