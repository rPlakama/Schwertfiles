# -- Foot Terminal -- #

{ ... }: {

# -- Terminal -- # 
programs.foot.enable = true;
programs.carapace.enableFishIntegration = true;
programs.carapace.enableBashIntegration = true;
# -- Shell -- #
programs.bash = {
  enable = true;
  bashrcExtra = "set -o vi";
  };
}
