{
  lib,
  pkgs,
  config,
  ...
}:

{

  programs.niri = {
    settings = {
      prefer-no-csd = true;
      screenshot-path = "~/Pictures/Screenshots/Screenshot from %Y-%m-%d %H-%M-%S.png";

      xwayland-satellite = {
        enable = true;
        path = lib.getExe pkgs.xwayland-satellite-unstable;
      };

      spawn-at-startup = [
        { argv = [ "swww-daemon" ]; }
        { argv = [ "wl-clip-persist" ]; }
        { argv = [ "waybar" ]; }
        { sh = "~/.config/niri/scripts/swayidle.fish"; }
      ];

      workspaces = {
        "1" = { };
        "2" = { };
        "3" = { };
        "4" = { };
        "5" = { };
        "6" = { };
        "7" = { };
        "8" = { };
        "9" = { };
      };

      input = {
        workspace-auto-back-and-forth = true;
        keyboard = {
          numlock = true;
          xkb = {
            layout = "br";
            options = "grp:win_space_toggle,caps:swapescape";
          };
        };
        touchpad = {
          tap = true;
          dwt = true;
          scroll-method = "two-finger";
          accel-speed = 0.1;
          accel-profile = "adaptive";
        };
        mouse.accel-speed = -0.5;
      };

      outputs = {
        "eDP-1" = {
          scale = 1.5;
          background-color = "#050505aa";
          mode = {
            width = 1920;
            height = 1080;
            refresh = 70.017;
          };
        };
      };

      hotkey-overlay.skip-at-startup = true;

      overview = {
        workspace-shadow = {
          enable = true;
          spread = 5;
          softness = 100;
        };
      };

      layout = {
        gaps = 6;
        center-focused-column = "on-overflow";
        preset-column-widths = [
          { proportion = 0.35; }
          { proportion = 0.5; }
          { proportion = 0.7; }
        ];
        default-column-width.proportion = 0.4;
        focus-ring = {
          enable = false;
          width = 2;
        };
        border = {
          enable = true;
          active.color = "#f5f5f519";
          inactive.color = "#101010ff";
          width = 1;
        };
        shadow = {
          enable = true;
          spread = 2;
          softness = 8;
          draw-behind-window = true;
        };
      };

      animations =
        let
          anim = {
            enable = true;
            kind.easing = {
              duration-ms = 300;
              curve = "cubic-bezier";
              curve-args = [
                0
                1
                0
                1
              ];
            };
          };
        in
        {
          slowdown = 1.0;
          workspace-switch = anim;
          overview-open-close = anim;
          horizontal-view-movement = anim;
          window-movement = anim;
          window-resize = anim;
          window-open = anim;
          window-close = anim;
        };

      layer-rules = [
        {
          matches = [ { namespace = "^swww-daemon$"; } ];
          place-within-backdrop = true;
        }
      ];
      window-rules = [
        {
          matches = [ { is-focused = false; } ];
          opacity = 0.95;
        }
        {
          matches = [
            {
              app-id = "firefox$";
              title = "^Picture-in-Picture$";
            }
          ];
          open-floating = true;
        }
      ];

      binds = with config.lib.niri.actions; {
        "Mod+D" = {
          hotkey-overlay.title = "Fuzzel.";
          action = spawn "fuzzel";
        };
        "Mod+Y" = {
          hotkey-overlay.title = "Yazi.";
          action = spawn-sh "foot -e yazi";
        };
        "Alt+Tab" = {
          hotkey-overlay.title = "Nvim.";
          action = spawn-sh "foot -e nvim";
        };
        "Mod+T" = {
          hotkey-overlay.title = "Open a Terminal: foot";
          action = spawn "foot";
        };
        "Mod+I" = {
          hotkey-overlay.title = "Musics!";
          action = spawn-sh "~/.config/niri/scripts/musics.fish";
        };

        "Mod+Shift+Slash".action = show-hotkey-overlay;
        "Mod+Shift+W".action = spawn-sh "foot -e pkill waybar && waybar";
        "Super+Alt+L" = {
          hotkey-overlay.title = "Lock the Screen: hyprlock";
          action = spawn "hyprlock";
        };
        "Mod+Shift+E".action = quit;
        "Ctrl+Alt+Delete".action = quit;
        "Mod+Shift+P".action = power-off-monitors;
        "Mod+Escape" = {
          allow-inhibiting = false;
          action = toggle-keyboard-shortcuts-inhibit;
        };

        "XF86AudioRaiseVolume" = {
          allow-when-locked = true;
          action = spawn-sh "wpctl set-volume @DEFAULT_AUDIO_SINK@ 0.05+";
        };
        "XF86AudioLowerVolume" = {
          allow-when-locked = true;
          action = spawn-sh "wpctl set-volume @DEFAULT_AUDIO_SINK@ 0.05-";
        };
        "XF86AudioMute" = {
          allow-when-locked = true;
          action = spawn-sh "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle";
        };
        "Mod+Ctrl+M" = {
          allow-when-locked = true;
          action = spawn-sh "wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle";
        };
        "XF86MonBrightnessUp" = {
          allow-when-locked = true;
          action = spawn "brightnessctl" "--class=backlight" "set" "+10%";
        };
        "XF86MonBrightnessDown" = {
          allow-when-locked = true;
          action = spawn "brightnessctl" "--class=backlight" "set" "10%-";
        };
        "Print".action = screenshot;
        "Mod+Tab" = {
          repeat = false;
          action = toggle-overview;
        };
        "Mod+W" = {
          repeat = false;
          action = close-window;
        };
        "Mod+F".action = maximize-column;
        "Mod+Shift+F".action = fullscreen-window;
        "Mod+V".action = toggle-window-floating;
        "Mod+Shift+V".action = switch-focus-between-floating-and-tiling;
        "Mod+C".action = center-column;
        "Mod+Ctrl+C".action = center-visible-columns;
        "Mod+R".action = switch-preset-column-width-back;
        "Mod+Shift+R".action = switch-preset-window-height;
        "Mod+Ctrl+R".action = reset-window-height;
        "Mod+Minus".action = set-column-width "-10%";
        "Mod+Equal".action = set-column-width "+10%";
        "Mod+Shift+Minus".action = set-window-height "-10%";
        "Mod+Shift+Equal".action = set-window-height "+10%";
        "Mod+BracketLeft".action = consume-or-expel-window-left;
        "Mod+BracketRight".action = consume-or-expel-window-right;
        "Mod+Left".action = focus-column-left;
        "Mod+Down".action = focus-window-down;
        "Mod+Up".action = focus-window-up;
        "Mod+Right".action = focus-column-right;
        "Mod+H".action = focus-column-left;
        "Mod+J".action = focus-window-down;
        "Mod+K".action = focus-window-up;
        "Mod+L".action = focus-column-right;
        "Mod+Shift+Left".action = move-column-left;
        "Mod+Shift+Down".action = move-window-down;
        "Mod+Shift+Up".action = move-window-up;
        "Mod+Shift+Right".action = move-column-right;
        "Mod+Shift+H".action = move-column-left;
        "Mod+Shift+J".action = move-window-down;
        "Mod+Shift+K".action = move-window-up;
        "Mod+Shift+L".action = move-column-right;
        "Mod+Ctrl+Left".action = focus-monitor-left;
        "Mod+Ctrl+Down".action = focus-monitor-down;
        "Mod+Ctrl+Up".action = focus-monitor-up;
        "Mod+Ctrl+Right".action = focus-monitor-right;
        "Mod+Ctrl+H".action = focus-monitor-left;
        "Mod+Ctrl+J".action = focus-monitor-down;
        "Mod+Ctrl+K".action = focus-monitor-up;
        "Mod+Ctrl+L".action = focus-monitor-right;
        "Mod+Shift+Ctrl+Left".action = move-column-to-monitor-left;
        "Mod+Shift+Ctrl+Down".action = move-column-to-monitor-down;
        "Mod+Shift+Ctrl+Up".action = move-column-to-monitor-up;
        "Mod+Shift+Ctrl+Right".action = move-column-to-monitor-right;
        "Mod+Shift+Ctrl+H".action = move-column-to-monitor-left;
        "Mod+Shift+Ctrl+J".action = move-column-to-monitor-down;
        "Mod+Shift+Ctrl+K".action = move-column-to-monitor-up;
        "Mod+Shift+Ctrl+L".action = move-column-to-monitor-right;
        "Mod+Page_Down".action = focus-workspace-down;
        "Mod+Page_Up".action = focus-workspace-up;
        "Mod+Ctrl+Page_Down".action = move-column-to-workspace-down;
        "Mod+Ctrl+Page_Up".action = move-column-to-workspace-up;
        "Mod+Ctrl+U".action = move-column-to-workspace-down;
        "Mod+Ctrl+I".action = move-column-to-workspace-up;
        "Mod+Shift+Page_Down".action = move-workspace-down;
        "Mod+Shift+Page_Up".action = move-workspace-up;
        "Mod+Shift+U".action = move-workspace-down;
        "Mod+Shift+I".action = move-workspace-up;
        "Mod+1".action = focus-workspace "1";
        "Mod+2".action = focus-workspace "2";
        "Mod+3".action = focus-workspace "3";
        "Mod+4".action = focus-workspace "4";
        "Mod+5".action = focus-workspace "5";
        "Mod+6".action = focus-workspace "6";
        "Mod+7".action = focus-workspace "7";
        "Mod+8".action = focus-workspace "8";
        "Mod+9".action = focus-workspace "9";
        "Mod+Shift+1".action = move-column-to-index "1";
        "Mod+Shift+2".action = move-column-to-index "2";
        "Mod+Shift+3".action = move-column-to-index "3";
        "Mod+Shift+4".action = move-column-to-index "4";
        "Mod+Shift+5".action = move-column-to-index "5";
        "Mod+Shift+6".action = move-column-to-index "6";
        "Mod+Shift+7".action = move-column-to-index "7";
        "Mod+Shift+8".action = move-column-to-index "8";
        "Mod+Shift+9".action = move-column-to-index "9";
        "Mod+WheelScrollDown" = {
          cooldown-ms = 150;
          action = focus-workspace-down;
        };
        "Mod+WheelScrollUp" = {
          cooldown-ms = 150;
          action = focus-workspace-up;
        };
        "Mod+Ctrl+WheelScrollDown" = {
          cooldown-ms = 150;
          action = move-column-to-workspace-down;
        };
        "Mod+Ctrl+WheelScrollUp" = {
          cooldown-ms = 150;
          action = move-column-to-workspace-up;
        };
        "Mod+WheelScrollRight".action = focus-column-right;
        "Mod+WheelScrollLeft".action = focus-column-left;
        "Mod+Ctrl+WheelScrollRight".action = move-column-right;
        "Mod+Ctrl+WheelScrollLeft".action = move-column-left;
        "Mod+Shift+WheelScrollDown".action = focus-column-right;
        "Mod+Shift+WheelScrollUp".action = focus-column-left;
        "Mod+Ctrl+Shift+WheelScrollDown".action = move-column-right;
        "Mod+Ctrl+Shift+WheelScrollUp".action = move-column-left;
      };
    };
  };
}
