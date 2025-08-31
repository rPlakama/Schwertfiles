{pkgs, ...}: {
  programs.anyrun = {
    enable = true;
    config = {
      x = {fraction = 0.5;};
      y = {fraction = 0.0;};
      width = {fraction = 0.75;};
      hideIcons = false;
      ignoreExclusiveZones = false;
      layer = "overlay";
      hidePluginInfo = false;
      closeOnClick = false;
      showResultsImmediately = false;
      maxEntries = null;

      plugins = [
        "${pkgs.anyrun}/lib/libapplications.so"
        "${pkgs.anyrun}/lib/libsymbols.so"
        "${pkgs.anyrun}/lib/libshell.so"
      ];
    };
    extraCss = ''
      * {
        border-width: 0px;
        border-color: black;
        border-radius: 2px;
      }

      #entry {
        background: #151515;
        }

      #window {
        border-color: #151515;
        background: #151515;
      }
    '';

    extraConfigFiles."shell.ron".text = ''
          Config(
        prefix: ":sh",
        shell: fish,
      )
    '';
    extraConfigFiles."applications.ron".text = ''
      Config(
        desktop_actions: true,
        max_entries: 5,
        terminal: Some(Terminal(
          command: "foot",
          args: "-e {}",
        )),
      )
    '';
  };
}
