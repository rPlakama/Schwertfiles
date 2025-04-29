{
  config,
  pkgs,
  ...
}: 

{
  home.username = "rplakama";
  home.homeDirectory = "/home/rplakama";
  home.stateVersion = "24.11"; 
  nixpkgs.config.allowUnfree = true;
  home.packages = with pkgs; [
  	
	nodejs_23
	brave
	hyprpaper
	pyright
	hypridle
	pandoc
	texliveTeTeX
	any-nix-shell
	hyprshot
	starship
	yarn
	ripgrep
	yadm
	dropbox
	discord
	obs-studio
	xfce.thunar
	p7zip
	pwvucontrol
	gcc
	wezterm
	overskride
	telegram-desktop
	brightnessctl
	wl-clipboard-rs
	btop



  ];

  home.sessionVariables = {
    EDITOR = "nvim";
    VISUAL = "nvim";
  };

  programs.rofi = {
    enable = true;
    font = "Cascadia Code";
    terminal = "${pkgs.wezterm}/bin/wezterm";
    theme = let
      #Theme configuration by Inherit
      inherit (config.lib.formats.rasi) mkLiteral;
    in {
      "*" = {
        background-color = mkLiteral "transparent";
        foreground-color = mkLiteral "rgba ( 250, 251, 252, 100 % )";
        border-color = mkLiteral "#000000";
        border-radius = mkLiteral "0.5%";
        text-color = mkLiteral "white";
        width = 700;
        spacing = 3;
      };
      "#inputbar" = {
        children = map mkLiteral ["prompt" "entry"];
      };
      "#textbox-prompt-colon" = {
        expand = false;
        str = ":";
        margin = mkLiteral "0px 0.3em 0em 0em";
        text-color = mkLiteral "white";
      };
      "#window" = {
        background-color = mkLiteral "rgba (0,0,0,0.9)";
        border-radius = mkLiteral "0.5%";
        padding = 5;
      };
    }; #End Of Inherit
  }; #End Of Rofi

  programs.waybar = {
    enable = true;
    settings = [
      {
        layer = "top";
        position = "bottom";
        modules-left = ["hyprland/workspaces"];
        modules-center = ["hyprland/window"];
        modules-right = ["pulseaudio" "bluetooth" "network" "battery" "clock" "tray"];
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
          format-alt = "{:%a, %d. %b  %H:%M}";
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
          max-length = 25;
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
           background: rgba(0, 0, 0, 0.9);
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
           color: rgba(100%, 100%, 100%, 0.3);
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
  #End of Waybar

  services.mako = {
    enable = true;
    font = "cascadia code 8";
    layer = "overlay";
    borderColor = "#808080";
    backgroundColor = "#CC000000";
    borderRadius = 3;
    defaultTimeout = 5000;
    borderSize = 0;
  };

  programs.yazi = {
    enable = true;
    enableFishIntegration = true;
    settings = {
      manager = {
        show_hidden = true;
      };
      theme = {
        fg = "white";
        dir = "white";
      };
      opener.edit = [
        {
          run = "nvim \"$@\"";
          block = true;
        }
      ];
    };
  }; #End of Yazi

  
  programs.fish = {
	 enable = true;
	 shellInit = ''
      set -g fish_greeting ""
	  set -g fish_key_bindings fish_vi_key_bindings
      ${pkgs.any-nix-shell}/bin/any-nix-shell fish --info-right | source
    '';
  };

    programs.starship = {
		enable = true;
		enableZshIntegration = true;
		settings = {
      add_newline = true;
      format = "$shell$nix_shell$git_branch$git_commit$git_state$git_status$directory$jobs$cmd_duration$character";
      shell = {
        disabled = false;
		style = "cyan bold";
		fish_indicator = "󰈺";
      };

	  character = {
	  	success_symbol = "[>>](bold white)";
		error_symbol = "[<<](bold red)";
		vimcmd_symbol = "[>>](bold green)";
		vimcmd_visual_symbol = "[>>](bold white)";
		};
      username = {
        style_user = "bright-white bold";
        style_root = "bright-red bold";
        };
	  };
    };

  # GTK + cursor + theme (Corrigido)

  dconf.settings = {
  "org/gnome/desktop/interface" = {
    color-scheme = "prefer-dark";
  };
};

  gtk = {
    enable = true;

    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    };
  };

  home.pointerCursor = {
    gtk.enable = true;
    x11.enable = true;
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Ice";
    size = 16;
  };

  programs.home-manager.enable = true;
}
