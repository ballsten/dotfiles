-- Pull in the wezterm API
local wezterm = require 'wezterm'


-- This will hold the configuration.
local config = wezterm.config_builder()

-- add powershell to the launch menu
local launch_menu = {}
if wezterm.target_triple == 'x86_64-pc-windows-msvc' then
  table.insert(launch_menu, {
    label = 'New Tab (PowerShell)',
    domain = { DomainName = "local" },
    args = { 'pwsh.exe' },
  })
end

config.launch_menu = launch_menu

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
--config.color_scheme = 'Sweet Love (terminal.sexy)'
--config.color_scheme = 'Summerfruit Light (base16)'
-- config.color_scheme = 'Tokyo Night'
config.color_scheme = 'Catppuccin Mocha'

config.font = wezterm.font 'FiraCode Nerd Font Mono'

config.use_fancy_tab_bar = false


config.window_background_opacity = 1.0

config.default_domain = 'WSL:Ubuntu'

-- disable the bell
config.audible_bell = "Disabled"

-- key configs
config.keys = {
	{ key = 'l', mods = 'CTRL|SHIFT|ALT', action = wezterm.action.ShowLauncher },
}

-- and finally, return the configuration to wezterm
return config
