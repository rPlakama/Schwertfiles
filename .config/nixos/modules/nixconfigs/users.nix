{ pkgs, ... }:

{

  users.users.rplakama = {

    isNormalUser = true;
    description = "I love sharkgirls.";
    extraGroups = [ "wheel" ];
    shell = pkgs.fish;

  };
}
