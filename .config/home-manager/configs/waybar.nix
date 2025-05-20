{...}:

{

  programs.waybar = {
    enable = true;
    settings = [
      {
        layer = "top";
        position = "bottom";
        modules-left = ["hyprland/workspaces"];
        modules-center = ["hyprland/window"];
        modules-right = ["pulseaudio" "bluetooth" "network" "battery" "temperature" "clock" "tray"];
        spacing = 0;
        height = 20;
        "hyprland/window" = {
          max-length = 80;
        };
        battery = {
          format = "{icon}";
          format-icons = ["󰁺" "󰁻" "󰁼" "󰁽" "󰁿" "󰂀" "󰂁" "󰂂" "󰁹"];
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
        bluetooth = {
          format = "";
          format-disabled = "󰂲";
          format-off = "󰂲";
          format-on = "󰂳";
          format-connected = "󰂱";
          on-click = "overskride";
        };

        "hyprland/workspaces" = {
          format = "{icon}";
          format-icons = {
            active = "󰫤";
            default = "󰫥";
          };
          persistent-workspaces = {
            "*" = 0; # 5 workspaces by default on every monitor
          };
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
          format-wifi = " 󰖩";
          format-disconnected = " 󱚼";
		  tooltip-format = "{essid}";
        };
      }
    ];
    style = ''
       * {
           font-family: Cascadia code;
           font-size: 9px;
           min-height: 0;
       }
       @define-color soft #ffffff;
       @define-color text black;
       window#waybar {
           background: @base01;
       }
       tooltip {
           background: rgba(43, 48, 59, 0.5);
           border: 1px solid rgba(100, 114, 125, 0.5);
       }
       tooltip label {
           color: white;
       }
       #workspaces button {
           padding: 0 5px;
           background: transparent;
           color: rgba(100%, 100%, 100%, 0.8);
       }
       #workspaces button.active {
           color: rgba(100%, 100%, 100%, 1.0);
           margin: 2px 2px 2px;
           padding-right: 8px;
       }
       #workspaces button.focused {
           background: #64727D;
       }
       #workspaces button.empty {
           color: rgba(100%, 100%, 100%, 0.2);
       }
	   #power-profiles-daemon {
	   		color: #ffffff;
			}

       #mode,
       #bluetooth,
       #network, /* Corrected from #networks */
       #tray,
       #pulseaudio,
       #clock,
       #battery { /* Unified selector for right modules */
           padding: 0 2px; /* Adjusted padding */
           margin: 0 0px; /* Added uniform margin */
       }
       #mode {
           background: #64727D;
           border-bottom: 3px solid white;
       }

       #bluetooth {
	   color: white;
       	padding-right: 0px;
      }
       #clock {
           color: white;
           background-color: transparent;
       }
       #battery {
           color: white;
           background-color: transparent;
        padding-right: 8px;
       }
       #battery.charging {
           color: white;
       }
       #pulseaudio.source-muted {
           color: @soft;
       }
       #pulseaudio {
           color: @soft;
       }

       #network {
	   	color: white;
       	padding-right: 9px;
      }
    '';
  };
}
