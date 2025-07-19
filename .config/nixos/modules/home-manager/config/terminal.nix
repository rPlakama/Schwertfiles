# -- Foot Terminal -- #

{ ... }: {

# -- Terminal -- # 
programs.foot.enable = true;
programs.carapace.enableFishIntegration = true;
programs.carapace.enableBashIntegration = true;
programs.carapace.enableNushellIntegration = true;
# -- Shell -- #
programs.zoxide.enableBashIntegration = true;
programs.zoxide.enableFishIntegration = true;

programs.bash = {
  enable = true;
  bashrcExtra = "set -o vi";
  profileExtra = ''
    if uwsm check may-start; then
    exec uwsm start hyprland-uwsm.desktop
  fi
  '';
  };
}
