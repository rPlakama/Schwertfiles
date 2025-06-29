{ ... }: {
  programs.zed-editor = {
    enable = true;
    userSettings = {
      vim_mode = true;
      features.copilot = false;
      telemetry.metrics = false;
      languages = {
        nix.language_servers = ["nixd" "!nil"];
        file_types = {
          HyprlandConfig = [ "hyprland.conf" "hyprlandd.conf" "hyprland.hl" "hyprlandd.hl" ];
        };
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
