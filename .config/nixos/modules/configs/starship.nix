{...}: {
  programs.starship = {
    enable = true;
    settings = {
      add_newline = true;
      format = "$shell$nix_shell$git_branch$git_commit$git_state$git_status$directory$jobs$cmd_duration$character";
      shell = {
        disabled = false;
        style = "cyan bold";
        fish_indicator = "󰈺";
        nu_indicator = ">";
      };

      character = {
        success_symbol = "[](bold white)";
        error_symbol = "[](bold white)";
        vimcmd_symbol = "[](bold white)";
        vimcmd_visual_symbol = "[](bold white)";
      };
      username = {
        style_user = "bright-white bold";
        style_root = "bright-red bold";
      };
    };
  };
}
