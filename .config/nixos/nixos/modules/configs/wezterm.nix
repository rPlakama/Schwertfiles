{...}: {
  programs.wezterm = {
    enable = true;
    extraConfig = ''
      return {

      show_tab_index_in_tab_bar = false;
      hide_tab_bar_if_only_one_tab = true;
      window_close_confirmation = "NeverPrompt";

      }
    '';
  };
}
