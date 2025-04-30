local wezterm = require 'wezterm'
return {
  -- Window settings
  window_close_confirmation = "NeverPrompt",
  window_background_opacity = 0.8,
  hide_tab_bar_if_only_one_tab = true,
  integrated_title_buttons = { 'Close' },
  use_fancy_tab_bar = true,
  show_close_tab_button_in_tabs = false,
  show_new_tab_button_in_tab_bar = false,

  -- Font settings
  font = wezterm.font_with_fallback({
	'CaskaydiaCove Nerd Font',
    'Noto Sans'
  }),
  font_size = 9.0,

  -- Window frame settings
  window_frame = {
    font = wezterm.font { family = 'CaskaydiaCove Nerd Font' },
    font_size = 9.0,
    active_titlebar_bg = 'rgba(0, 0, 0, 0.9)',
    inactive_titlebar_bg = 'rgba(0, 0, 0, 0)',
  },

  -- Color settings
  colors = {
    tab_bar = {
      -- Active tab settings
      active_tab = {
        bg_color = "rgba(116, 108, 186 )",
        fg_color = "#ffffff",
        intensity = "Normal",
        underline = "None",
      },
      
      -- Inactive tab settings
      inactive_tab = {
        bg_color = "#1b1032",
        fg_color = "#808080",
      },
    }
  }
}

