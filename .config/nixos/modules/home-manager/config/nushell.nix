{ ... }:

{

  programs = {
    starship.enableNushellIntegration = true;
    nushell = {
      enable = true;
      shellAliases = {
        cdf = "cd (fd --hidden -t d | fzf)";
        l = "eza";
        y = "yazi";
      };
      settings = {
        edit_mode = "vi";
        show_banner = false;
      };
    };
  };
}
