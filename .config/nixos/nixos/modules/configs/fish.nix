{...}: {
  programs.fish = {
    enable = true;
    shellInit = ''
          set -g fish_greeting ""
      set -g fish_key_bindings fish_vi_key_bindings
    '';
  };
  programs.carapace.enable = true;
  programs.carapace.enableFishIntegration = true;
}
