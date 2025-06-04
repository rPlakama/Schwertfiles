{
  programs.waybar = {
    enable = true;
    settings = [
      {
        layer = "top";
        position = "bottom";
        height = 20;
        spacing = 0;

        modules-left = ["hyprland/workspaces"];
        modules-right = [
          "pulseaudio"
          "battery"
          "clock"
          "bluetooth"
          "network"
          "temperature"
          "tray"
        ];

        "hyprland/window" = {
          max-length = 80;
        };

        "hyprland/workspaces" = {
          format = "{icon}";
          format-icons = {
            active = "󰫤";
            default = "󰫥";
          };
          persistent-workspaces = {
            "*" = 0;
          };
        };

        bluetooth = {
          format-disabled = "󰂲";
          format-off = "󰂲";
          format-on = "󰂳";
          format-connected = "󰂱";
          on-click = "overskride";
        };

        pulseaudio = {
          format = "{volume}%  󰎇 {format_source} ";
          format-muted = "󰎊  {format_source} ";
          format-source = "󰨙";
          format-source-muted = "󰨚";
          max-volume = 100;
          format-icons = {
            headphone = "";
            headset = "󰋋";
            default = [""];
          };
          on-click = "pwvucontrol";
          on-click-right = "amixer -D pipewire set Capture 0+ toggle";
        };

        network = {
          format = "{icon}";
          format-wifi = "󰖩 "; # ← fixed: removed leading space
          format-disconnected = "󱚼 "; # ← fixed: removed leading space
          tooltip-format = "{essid}";
        };

        battery = {
          format = "{capacity}% {icon} ";
          format-icons = [
            " 󰁺"
            " 󰁻"
            " 󰁼"
            " 󰁽"
            " 󰁿"
            " 󰂀"
            " 󰂁"
            " 󰂂"
            " 󰁹"
          ];
        };

        clock = {
          tooltip-format = "<tt><big>{calendar}</big></tt>";
          format = "{:%a, %d. %b  %H:%M}";
          calendar = {
            mode = "month";
          };
        };

        tray = {
          icon-size = 10;
          spacing = 5;
        };
      }
    ];

    style = ''
          * {
            font-family: Cascadia Code;
            font-size: 9px;
            min-height: 0;
          }

          window#waybar {
            background: transparent;
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

          /* Right modules */
          #bluetooth,
          #network,
          #tray,
          #pulseaudio,
          #clock,
          #battery {
            padding: 0 6px;
            margin: 0;
            color: @base05;
            min-width: 2px;
          }

          #battery.charging {
            color: @base0A;
          }

          #pulseaudio.source-muted {
            color: @base04;
          }
    '';
  };
}
