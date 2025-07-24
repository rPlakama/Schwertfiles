{...}: {
  # -- FastFetch -- #
  programs.fastfetch = {
    enable = true;
    settings = {
      logo = {
        source = "nixos";
      };
      modules = [
        "Break"
        "Uptime"
        "Host"
        "OS"
        "Packages"
        "Break"
        "CPU"
        "GPU"
        "WM"
        "Terminal"
        "TerminalFont"
        "Break"
        "Memory"
        "Disk"
        "Kernel"
      ];
    };
  };
}
