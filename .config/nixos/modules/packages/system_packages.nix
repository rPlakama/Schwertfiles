{ pkgs, ... }: 
{
# -- Utils for Systm -- #
environment.systemPackages = with pkgs; [
  # -- Core CLI Utilities -- #
  bat 
  du-dust
  eza
  fd
  ripgrep
  # -- File & Archive Management -- #
  nemo
  p7zip
  unzip
  zip
  yazi
  ripdrag #\\ Yazi extra depedencie
  # -- Desktop & Wayland Integration -- #
  fuzzel         
  hyprshot       
  qimgv          
  smile          
  swww           
  wl-clip-persist

  # -- System & Hardware Control -- #
  alsa-utils
  brightnessctl
  lxqt.lxqt-policykit 
  pavucontrol 

  # -- Development & Dotfiles -- #
  git
  yadm
  # -- Nix Ecosystem -- #
  nix-output-monitor

  ];

# -- Font's -- #
fonts.packages = with pkgs; [ 

  nerd-fonts.caskaydia-cove
  oswald
  font-awesome_6

  ];
}
