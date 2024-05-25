local wezterm = require "wezterm"

local config = {
  check_for_updates = false,
  exit_behavior = "CloseOnCleanExit",
  exit_behavior_messaging = "None",
  default_cursor_style = "SteadyBlock",
  enable_scroll_bar = true,
  scrollback_lines = 65535,
  audible_bell = "Disabled",
  color_scheme = "Tango",
  default_prog = {
    '/usr/local/bin/bash',
    '-l',
  },
  window_frame = {
    font = wezterm.font {
      family = "Cascadia Code NF",
      weight = "Regular",
    },
  },
  font = wezterm.font {
    family = "Cascadia Code NF",
    weight = "Regular",
    harfbuzz_features = {
      'calt=0',
      'clig=0',
      'liga=0',
      'zero',
    },
  },
  font_size = 10,
  warn_about_missing_glyphs = false,
  adjust_window_size_when_changing_font_size = false,
  bold_brightens_ansi_colors = "BrightAndBold",
  selection_word_boundary = '{}[]()"\'`-,./?%&@#:;_',
}

return config
