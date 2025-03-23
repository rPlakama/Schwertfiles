# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }: 

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "Elisheva"; # Define your hostname.
  networking.networkmanager.enable = true;
  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Set your time zone.
  time.timeZone = "America/Recife";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "pt_BR.UTF-8";
    LC_IDENTIFICATION = "pt_BR.UTF-8";
    LC_MEASUREMENT = "pt_BR.UTF-8";
    LC_MONETARY = "pt_BR.UTF-8";
    LC_NAME = "pt_BR.UTF-8";
    LC_NUMERIC = "pt_BR.UTF-8";
    LC_PAPER = "pt_BR.UTF-8";
    LC_TELEPHONE = "pt_BR.UTF-8";
    LC_TIME = "pt_BR.UTF-8";
  };

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "br";
    variant = "";
  };

  # Configure console keymap
  console.keyMap = "br-abnt2";

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.rplakama = {
    isNormalUser = true;
    description = "rPlakama";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # System Packages
 environment.systemPackages = with pkgs; [
  #Main-Packages
  vim
  kitty
  killall
  mesa
  yazi
  brightnessctl
  pavucontrol
  alsa-utils
  hunspellDicts.pt_BR
  auto-cpufreq
  #System-Programs
  wofi
  nwg-look
  git
  p7zip-rar
  gcc
  zip
  unzip
  yadm
  gzip
  nodejs_23
  wl-clipboard-rs
  fastfetch
  mako
  hyprshot
  btop
  #Extras
  telegram-desktop
  firefox
  waybar
  vlc
  hyprpaper
  spotify
  obsidian
  xfce.thunar
  krita
  discord
  rustc
  ];
fonts.packages = with pkgs; [

 nerd-fonts.caskaydia-cove
 ];
  #MainServices

programs.hyprland = {
  enable = true;
};
services.auto-cpufreq = {
  enable = true;
};
programs.neovim.enable = true;
programs.neovim.defaultEditor = true;
programs.hyprlock.enable = true;

services.displayManager.sddm.enable = true;
services.displayManager.sddm.wayland.enable = true;
services.displayManager.autoLogin.user = "rplakama";
services.displayManager.defaultSession = "hyprland";
  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.11"; # Did you read the comment?

}
