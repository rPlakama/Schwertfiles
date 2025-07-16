{ pkgs, ... }: 

{

# -- SDDM -- #
  services = {
    displayManager = {
      autoLogin.enable = true;
      autoLogin.user = "rplakama";
      sddm.enable = true;
      sddm.wayland.enable = true;
  };
};
# -- Servics -- #
services = {
  tumbler.enable = true;
  transmission.enable = true;
  transmission.package = pkgs.transmission_4;
  };
}
