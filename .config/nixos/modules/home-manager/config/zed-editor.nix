
{ ... }: 

{
# -- zed-editor -- #
  programs.zed-editor = {
    enable = true;
    userSettings = {
      base_keymap = "vscode";
      title_bar.show_sign_in = false;
      vim_mode = true;
      confirm_quit = false;
      auto_install_extensions = {
        lua = true;
        nix = true;
        java = true;
        zed-hyprlang-extension = true;
      };
      features = {
        copilot = false;
        chat = false;
        assistant.button = false;
        collab = false;
        chat_panel = {button = false;};
        collaboration_panel = {button = false;};
        search = {button = false;}; # Added to hide the search button
      };
      languages = {
        nix = {
          language_servers = ["nixd" "!nil"];
        };
        file_types = {
          hyprlandconfig = ["hyprland.conf" "hyprlandd.conf" "hyprland.hl" "hyprlandd.hl"];
        };
      };
      telemetry = {
        metrics = false;
      };
    };
    extensions = [
      "lua"
      "nix"
      "java"
      "zed-hyprlang-extension"
    ];
  };
}
