{ pkgs, ... }:
{
  # -- General Nix Settings -- #
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];
  nixpkgs.config.allowUnfree = true;
  security.polkit.enable = true;
  security.sudo-rs.enable = true;
  services.gnome.gnome-keyring.enable = true;
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
  # -- rPlakama, the shell  -- #
  programs.starship.enable = true;
  users.users.rplakama.shell = pkgs.fish;
  programs.bash.completion.enable = true;

  environment.shellAliases = {
    cdf = ''cd ~; cd "$(fd --hidden -t d | fzf )"'';
    y = ''yazi'';
  };

  programs.fish = {
    enable = true;
    shellInit = ''
      set -g fish_key_bindings fish_vi_key_bindings
      set -g fish_greeting ""
    '';
  };
  # -- rPlakama -- #
  services.displayManager.ly = {
    enable = true;
    settings = {
      user = "rplakama";
    };
  };
  # services.getty.autologinUser = "rplakama";
  nix.settings.trusted-users = [
    "networkmanager"
    "root"
    "@wheel"
  ];
  users.users.rplakama = {
    isNormalUser = true;
    description = "I like sharkgirls.";
    extraGroups = [ "wheel" ];
  };
}
