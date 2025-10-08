{ ... }:

{

  environment = {
    sessionVariables.NIXOS_OZONE_WL = "1";
    shellAliases = {
      l = "eza -1";
      ls = "eza";
    };
  };

}
