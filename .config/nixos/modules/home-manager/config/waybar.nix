{ ... }: 

{
  programs.waybar = {
    enable = true;
# -- Config -- #
    settings = {
      mainBar = {
        layer = "top";
        height = 5;
        modules-left = [ "hyprland/workspaces" ];
        modules-center = [ "tray" "clock" "temperature" "power-profiles-daemon" ];
        modules-right = [ "network" "battery" "pulseaudio" ];

        tray = {
          icon-size = 13;
          spacing = 3;
        };

        "hyprland/window" = {
          max-length = 50;
        };

        battery = {
          format = "{icon}";
          format-icons = [ "" "" "" "" "" ];
          tooltip-format = "{timeTo}\n Capacity: {capacity}%";
          tooltip = true;
          states = {
            critical = 15;
          };
        };

        memory = {
          interval = 30;
          format = "{used:0.1f}G";
        };

        pulseaudio = {
          format = "{volume}% {format_source}";
          format-source = "ON";
          format-source-muted = "OFF";
        };

        clock = {
          format = "{:%a, %d. %b  %H:%M}";
          tooltip = true;
          tooltip-format = "<tt><big>{calendar}</big></tt>";
        };

        temperature = {
          hwmon-path = "/sys/class/hwmon/hwmon2/temp1_input";
          format = "{temperatureC}°C";
          tooltip-format = "{temperatureC}°C | CPU";
          tooltip = true;
        };

        network = {
          format = "󰈀";
          format-alt = "{essid} {icon}";
          format-wifi = "󰖩";
          format-disconnected = "󰖪";
          tooltip-format = "{essid}";
        };

        "power-profiles-daemon" = {
          format = "{icon}";
          tooltip-format = "Power profile: {profile}\nDriver: {driver}";
          tooltip = true;
          format-icons = {
            default = "";
            performance = "󰓅";
            balanced = "󰾅";
            power-saver = "󰾆";
          };
        };

        reload_style_on_change = true;
      };
    };
# -- Style -- #
    style = ''
      * {
        border: none;
        border-radius: 0;
        font-family: "Montserrat", "Font Awesome 6 Free";
        font-size: 10px;
        font-weight: 900;
      }

      window#waybar {
      }

      /* Modules-wise */
      .modules-left {
        margin-left: 12px;
      }
      .modules-right {
        margin-right: 12px;
      }
      .modules-center,
      .modules-left,
      .modules-right {
        border-radius: 5px;
        margin-top: 4px;
        margin-bottom: 4px;
        background-size: 200px 20px;
        padding: 0px 7px 0px; /*modules width*/
      }

      /* General */
      #network,
      #battery,
      #clock,
      #power-profile-daemon,
      #pulseaudio {
        margin-left: 4px;
        margin-right: 4px;
      }

      /* Workspaces Specifics */
      #workspaces button {
        padding: 0 1px;
        transition: 0.12s ease-in-out;
      }

      #workspaces button.active {
      }

      #workspaces button.urgent {
      }

      /* Central Modules Specifics */
      #clock,
      #power-profiles-daemon,
      #temperature {
        margin-left: 3px;
        margin-right: 3px;
      }

      #power-profiles-daemon.performance {
        transition: 0.2s ease-in-out;
      }
      #power-profiles-daemon.balanced {
        transition: 0.2s ease-in-out;
      }
      #power-profiles-daemon.power-saver {
        transition: 0.2s ease-in-out;
      }
      #power-profiles-daemon {
        font-size: 12px;
      }

      /* Right Modules Specifics */
      #battery.critical {
      }
      #pulseaudio.muted {
      }
    '';
  };
}


