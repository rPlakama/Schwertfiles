{...}: {
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 0;

        margin-top = 1;
        margin-bottom = 0;
        margin-right = 1;
        margin-left = 1;

        modules-left = [
          "network"
          "custom/separrator"
          "pulseaudio"
          "custom/separrator"
          "hyprland/workspaces"
        ];

        modules-center = [
          "memory"
          "custom/separrator"
          "clock"
          "tray"
        ];

        modules-right = [
          "battery"
          "custom/separrator"
          "power-profiles-daemon"
        ];

        "custom/separrator" = {
          format = "|";
        };

        "tray" = {
          icon-size = 10;
          spacing = 3;
          reverse-direction = true;
        };

        "memory" = {
          interval = 30;
          format = "{used:0.1f}G";
          tooltip = false;
        };

        "hyprland/window" = {
          max-length = 50;
        };

        "battery" = {
          format = "{capacity}%";
          tooltip-format = "{timeTo}";
          tooltip = true;
          states = {
            critical = 15;
            warming = 30;
          };
        };

        "pulseaudio" = {
          format = "{volume}% {format_source}";
          format-source = "ON";
          format-source-muted = "OFF";
        };

        "clock" = {
          format = "{:%a, %d. %b  %H:%M}";
          tooltip = true;
          tooltip-format = "<tt><big>{calendar}</big></tt>";
        };

        "temperature" = {
          "hwmon-path" = "/sys/class/hwmon/hwmon2/temp1_input";
          format = "{temperatureC}°C";
          tooltip-format = "{temperatureC}°C | CPU";
          tooltip = false;
        };

        "network" = {
          format = "{essid}";
          format-alt = "{essid} {icon}";
          format-wifi = "{essid}";
          format-disconnected = "NO CONNECTION";
          tooltip-format = " NAME: {ifname} \n SIGNAL STRENGHT: {signalStrength} \n FREQUENCY: {frequency}GHZ \n ";
        };

        "power-profiles-daemon" = {
          format = "{icon}";
          tooltip-format = "Power profile: {profile}\nDriver: {driver}";
          tooltip = true;
          format-icons = {
            "default" = "";
            "performance" = "HIGH";
            "balanced" = "MEDIUM";
            "power-saver" = "LOW";
          };
        };
      };
    };

    style = ''
      /* Base */
      @define-color baseback #000000;
      @define-color base00 #151515;
      @define-color base01 #202020;
      @define-color base02 #303030;
      @define-color base03 #505050;
      @define-color base04 #b0b0b0;
      @define-color base05 #d0d0d0;
      @define-color base06 #e0e0e0;
      @define-color base07 #f5f5f5;
      @define-color base08 #fb9fb1;
      @define-color base09 #eda987;
      @define-color base0A #ddb26f;
      @define-color base0B #acc267;
      @define-color base0C #10cfc0;
      @define-color base0D #6fc2ef;
      @define-color base0E #e1a3ee;
      @define-color base0F #deaf8f;

      * {
        font-family: "Montserrat", "Font Awesome 6 Free";
        font-weight: 700;
        font-size: 10px;
      }

      window#waybar {
        color: @base07;
        border-radius: 2px;
        background: alpha(@base00, 1);
        border: solid;
        border-width: 1px;
        border-color: alpha(@base02, 0.6);
      }

      .modules-right {
        margin: 0;
        border: 1px solid transparent;
      }

      .modules-left {
        margin: 0;
        border: 1px solid transparent;
      }

      tooltip {
        background-color: alpha(@base00, 0.95);
	border: 1px solid transparent;
	border-radius: 2px;
      }

      /* Modules-wise */
      .modules-left,
      .modules-center,
      .modules-right {
        background-size: 200px 20px;
        padding: 0px 4px 0px;
        /*modules width*/
      }

      /* General */
      #network,
      #battery,
      #tray,
      #clock,
      #memory,
      #power-profile-daemon,
      #pulseaudio {
        margin-left: 4px;
        margin-right: 4px;
      }

      /* Workspaces Specifics */
      #workspaces button {
        padding: 0 1px;
        color: alpha(@base06, 0.30);
        padding: 0px 0px 0px;
        border-radius: 0px;
        transition: .04s ease-in;
      }

      #workspaces button.active {
        color: @base07;
      }

      #workspaces button.urgent {
        color: @base09;
      }

      /* Central Modules Specifics */
      #clock,
      #power-profiles-daemon,
      #temperature {
        margin-left: 3px;
        margin-right: 3px;
      }

      #temperature {
        color: @base0E;
      }

      #power-profiles-daemon.performance {
        color: @base08;
      }

      #power-profiles-daemon.balanced {
        color: @base0C;
      }

      #power-profiles-daemon.power-saver {
        color: alpha(@base0D, 0.9);
      }

      /* Right Modules Specifics */
      #battery.critical {
        color: @base08;
      }

      #battery.warming {
        color: @base0A;
      }

      #battery {
        color: @base0B;
      }

      #battery.charging {
        color: @base0D;
      }

      #pulseaudio.muted {
        color: @base08;
      }
    '';
  };
}
