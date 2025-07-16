# -- Spicefity-nix enableation, add theme within mkForce. Depedencies: Stylix -- #

{ inputs, pkgs, ... }: 

let
  spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.stdenv.system};
in {
  programs.spicetify = {
    enable = true;
    enabledExtensions = with spicePkgs.extensions; [
      hidePodcasts
      keyboardShortcut
    ];
  };
}
