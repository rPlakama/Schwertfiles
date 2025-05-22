{ pkgs, ...}:

{

  home.stateVersion = "24.11";
    imports = [

    ./configs/fastfetch.nix
    ./configs/waybar.nix
    ./configs/yazi.nix
    ./configs/fish.nix
    ./configs/starship.nix
    ./configs/mako.nix
    ./configs/rofi.nix
	./configs/ghostty.nix

  ];
  stylix = {

    enable = true;
    image = ./wallpapers/1.png;
    polarity = "dark";
    autoEnable = true;

    targets.firefox.enable = true;
    };


}

