{ config, lib, pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
	
	# Dev

	git
	neovim
	yarn
	nodejs_latest
	gcc
	nixd

	# System

	wl-clipboard-rs
	yadm
	brightnessctl
	swww
	hyprshot
	ripgrep
	pwvucontrol

	# Programs

	firefox
	zathura
	btop
	dropbox
	tidal-hifi
	overskride
	telegram-desktop


  ];

  fonts.packages = with pkgs; [

    nerd-fonts.caskaydia-cove
    noto-fonts
    oswald
    unifont
    symbola

  ];

}

