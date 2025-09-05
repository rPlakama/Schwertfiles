{
  description = "Type shit twin";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
  };

  outputs =
    { nixpkgs, ... }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      devShells.${system}.default = pkgs.mkShell {
        buildInputs = with pkgs; [
          # Typeshit twin, dev tools for QT.
          kdePackages.qtdeclarative
        ];

        shellHook = ''
          	  echo "Its ON! Quickshell got ya!"
          	'';
      };
    };
}
