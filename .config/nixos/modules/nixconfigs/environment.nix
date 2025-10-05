{ ... }:

{

  environment = {
    sessionVariables.NIXOS_OZONE_WL = "1";
    shellAliases = {
      cdf = ''cd /; cd "$(fd --hidden -t d | fzf )"'';
      y = ''yazi'';
      ls = ''eza'';
    };
  };

}
