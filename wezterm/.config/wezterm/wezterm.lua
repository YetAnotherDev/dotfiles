local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Font Details
--config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font = wezterm.font("JetBrainsMono Nerd Font Mono")
config.font_size = 16
config.line_height = 1.1

-- Window
config.tab_bar_at_bottom = true
--config.window_background_opacity = 0.95
config.macos_window_background_blur = 15

-- Theme
--config.color_scheme = 'Catppuccin Frappe'
--config.color_scheme = 'tokyonight-storm'
-- config.color_scheme = "Dracula"

-- local wezterm = require("wezterm")
local theme = wezterm.plugin.require("https://github.com/neapsix/wezterm").main
--
config.colors = theme.colors()
config.window_frame = theme.window_frame()

config.max_fps = 120
return config
