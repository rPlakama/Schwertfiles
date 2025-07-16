{ pkgs, ... }: 

{

# -- General Nix Settings -- #
  nix.settings.experimental-features = ["nix-command" "flakes"];
  nixpkgs.config.allowUnfree = true;
  security.polkit.enable = true;

# -- rPlakama, the man himself -- #
  users.defaultUserShell = pkgs.fish;
  programs.fish.enable = true;
  nix.settings.trusted-users = ["root" "@wheel"];
  users.users.rplakama = {
    isNormalUser = true;
    description = "I like sharkgirls.";
    extraGroups = [ "wheel" ];
  };
}


