{ config, pkgs, ... }:

# O próposito desse IMPORT para o CONFIGURATION.NIX é organizar e reduzir o tamanho do CONFIGURATION.NIX e manter os realmente necessários instalados.
{
  
  environment.systemPackages = with pkgs; [

#Componentes Principais

  vim 
  kitty 
  mesa
  brightnessctl
  gcc

#Serviços

  git
  p7zip
  unzip
  yadm
  power-profiles-daemon
  
#Programas

  firefox

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

# Configurações NVIM Instalado Via Home_Manager
programs.neovim.enable = true;
programs.neovim.defaultEditor = true;

# Ativar Bluetooth
hardware.bluetooth.enable = true;

}
