{config,  pkgs, ... }: 

{

# -- General Nix Settings -- #
  nix.settings.experimental-features = ["nix-command" "flakes"];
  nixpkgs.config.allowUnfree = true;
  security.polkit.enable = true;
# -- rPlakama, the man himself -- #
  programs.starship.enable = true;
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
    extraGroups = [ "wheel" ];
  };
}


