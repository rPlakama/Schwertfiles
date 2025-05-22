{ libs, config, pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
	
	# Dev

	git
	neovim
	yarn
	gcc
	nixd

	# System

	wl-clipboard-rs
	yadm
	brightnessctl
	swww
	hyprshot

	# Programs

	firefox
	zathura
	telegram-desktop
	btop
	ghostty

  ];

  fonts.packages = with pkgs; [

    nerd-fonts.caskaydia-cove
    noto-fonts
    oswald
    unifont
    symbola

  ];

}

