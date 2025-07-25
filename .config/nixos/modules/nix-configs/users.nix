{
  config,
  pkgs,
  ...
}: {
  # -- General Nix Settings -- #
  nix.settings.experimental-features = ["nix-command" "flakes"];
  nixpkgs.config.allowUnfree = true;
  security.polkit.enable = true;
  # -- rPlakama, the shell  -- #
  programs.starship.enable = true;
  users.users.rplakama.shell = pkgs.fish;
  programs.bash.completion.enable = true;
  programs.fish = {
    enable = true;
    shellInit = ''
      set -g fish_key_bindings fish_vi_key_bindings
      set -g fish_greeting ""
    '';
   loginShellInit = ''
         if uwsm check may-start
         exec uwsm start hyprland-uwsm.desktop
     end
   '';
  };

  # -- Holy Autologin -- #
  systemd.services."getty@tty1" = {
    overrideStrategy = "asDropin";
    serviceConfig.ExecStart = ["" "@${pkgs.util-linux}/sbin/agetty agetty --login-program ${config.services.getty.loginProgram} --autologin rplakama --noclear --keep-baud %I 115200,38400,9600 $TERM"];
  };
  # -- The man himself... -- #
  nix.settings.trusted-users = ["networkmanager" "root" "@wheel"];
  users.users.rplakama = {
    isNormalUser = true;
    description = "I like sharkgirls.";
    extraGroups = ["wheel"];
  };
}
