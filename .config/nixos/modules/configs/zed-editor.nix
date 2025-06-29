{...}: {
  programs.zed-editor = {
    enable = true;
    userSettings = {
      vim_mode = true;
      features.copilot = false;
      telemetry.metrics = false;
      languages.nix.language_servers = ["nixd" "!nil"];
    };
    extensions = [
      "lua"
      "nix"
      "java"
    ];
  };
}
