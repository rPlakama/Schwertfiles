# -- Foot Terminal -- #
{...}: {
  # -- Terminal -- #
  programs.foot.enable = true;
  # -- Shell -- #
  programs.bash = {
    enable = true;
    bashrcExtra = "set -o vi";
    # profileExtra = ''
    #   if uwsm check may-start; then
    #   exec uwsm start hyprland-uwsm.desktop
    # fi
    # '';
    # };
  };
}
