{ config, pkgs, ... }:

# O próposito desse IMPORT para o CONFIGURATION.NIX é organizar e reduzir o tamanho do CONFIGURATION.NIX e manter os realmente necessários instalados.
{
  
  environment.systemPackages = with pkgs; [

#Componentes Principais

  vim 
  neovim
  kitty 
  mesa
  yazi
  brightnessctl
  gcc
  ripgrep

#Serviços

  pavucontrol
  wofi
  git
  p7zip
  unzip
  yadm
  rust-analyzer  
  power-profiles-daemon
  waybar
  mako
  nodejs_23
  alsa-utils
  

#Programas

  vlc
  spotify
  krita
  telegram-desktop
  firefox
  discord

#Ferramentas

  btop
  hyprpaper
  obsidian
  xfce.thunar
  hyprshot
  fastfetch
  wl-clipboard-rs
  hunspellDicts.pt_BR
  
];
# Serviços e configurações diversas

# Hyprland  
  programs.hyprland.enable = true;
  programs.hyprlock.enable = true; 
	
# power-profiles-daemon
  services.power-profiles-daemon.enable = true;

# SDDM como Display Manager e auto-login
  services.displayManager.sddm.enable = true;
  services.displayManager.sddm.wayland.enable = true;
  services.displayManager.autoLogin.user = "rplakama";
  services.displayManager.defaultSession = "hyprland";

#  Nvim como editor padrão
 environment.variables.EDITOR = "nvim";
 programs.neovim.defaultEditor = true;
 programs.neovim.enable = true ;

  

}
