{
  programs.waybar = {
    enable = true;
    settings = [
      {
        layer = "top";
        position = "bottom";
        height = 20;
        spacing = 0;

        modules-left = ["hyprland/workspaces" "custom/rightarrow"];
        modules-right = [
          "custom/leftarrow"
          "pulseaudio"
          "battery"
          "cpu"
          "clock"
          "bluetooth"
          "network"
          "tray"
        ];

        "hyprland/window" = {
          max-length = 80;
        };

        "cpu" = {
          interval = 5;
          format = "{}% ";
          max-length = 10;
        };
        "bluetooth" = {
          format-disabled = "󰂲";
          format-off = "󰂲";
          format-on = "󰂱";
          format-connected = "󰂳";
          tooltip = true;
          tooltip-format = "{status}";
        };

        "custom/leftarrow" = {
          format = "";
          tooltip = false;
        };
        "custom/rightarrow" = {
          format = "";
          tooltip = false;
        };
        "hyprland/workspaces" = {
          format = "{icon}";
          tooltip = false;
          format-icons = {
            "1" = "󰬺";
            "2" = "󰬻";
            "3" = "󰬼";
            "4" = "󰬽";
            "5" = "󰬾";
            "6" = "󰬿";
            "7" = "󰭀";
            "8" = "󰭁";
            "9" = "󰭂";
            "10" = "󰨿";
          };
          persistent-workspaces = {
            "*" = 0;
          };
        };

        pulseaudio = {
          format = "{volume}% 󰎇";
          format-muted = "󰎊 {format_source} ";
          max-volume = 100;
          format-icons = {
            headphone = "";
            headset = "󰋋";
            default = [""];
          };
          on-click = "pulseaudio";
        };

        network = {
          format = "{icon}";
          format-wifi = "";
          format-disconnected = "";
          tooltip-format = "{essid}";
        };

        battery = {
          format = "{capacity}% {icon}";
          format-icons = [
            "󰁺"
            "󰁻"
            "󰁼"
            "󰁽"
            "󰁿"
            "󰂀"
            "󰂁"
            "󰂂"
            "󰁹"
          ];
        };

        clock = {
          interval = 60;
          format = "{:%H:%M}";
          max-length = 25;
          tooltip = false;
        };

        tray = {
          icon-size = 10;
          spacing = 5;
        };
      }
    ];

    style = ''
               * {
                 font-size: 10px;
                 min-height: 0;
               }

               window#waybar {
         background: alpha(@base00, 0.650000);
                 color: @base05;
               }

               tooltip {
                 background: @base00;
           border: none;
                 color: @base05;
               }

               /* Mode indicator */
               #mode {
                 background: @base02;
                 border-bottom: 3px solid @base05;
                 color: @base05;
               }

               /* Workspaces */
               .modules-left #workspaces button {
                 border-bottom: 1px solid transparent;
                 margin-right: 0px;  /* gap entre os botões */
               }

               .modules-left #workspaces button.focused,
               .modules-left #workspaces button.active {
                 border-bottom: 3px solid transparent;
               }

        #workspaces {
          background-color: @base00;
          }

               /* Right modules */
               #network,
               #tray,
               #pulseaudio,
               #clock,
        #cpu,
               #bluetooth,
               #battery {
                 padding: 0 4px;
                 margin: 0;
                 background-color: @base00;
                 color: @base05;
                 min-width: 2px;

               }

               #battery.charging {
                 color: @base0A;
               }

               #pulseaudio.source-muted {
                 color: @base04;
               }
        #custom-leftarrow,
        #custom-rightarrow {
          color: @base00;
          font-size: 18px;

      }

    '';
  };
}
