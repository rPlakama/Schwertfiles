{pkgs, ...}: {
  programs.python = {
    enable = true;
    package = pkgs.python3.withPackages (ps:
      with ps; [
        cowsay
      ]);
  };
}
