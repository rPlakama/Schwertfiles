{...}: {
  programs.fastfetch = {
    enable = true;
    settings = {
      logo = {
        source = "nixos_small";
      };
      modules = [
        "Break"
        "Uptime"
        "Host"
        "Break"
        "CPU"
        "GPU"
        "WM"
        "Terminal"
        "TerminalFont"
        "Break"
        "Memory"
        "Kernel"
        "Packages"
      ];
    };
  };
}
