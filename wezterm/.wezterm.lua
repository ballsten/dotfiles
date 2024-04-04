-- Pull in the wezterm API
local wezterm = require 'wezterm'


-- This will hold the configuration.
local config = wezterm.config_builder()

-- add powershell to the launch menu
local launch_menu = {}
if wezterm.target_triple == 'x86_64-pc-windows-msvc' then
  table.insert(launch_menu, {
    label = 'PowerShell',
    args = { 'pwsh.exe', '-NoLogo' },
  })
end

config.launch_menu = launch_menu

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Sweet Love (terminal.sexy)'
--config.color_scheme = 'Summerfruit Light (base16)'
config.font = wezterm.font 'FiraCode Nerd Font Mono'

config.use_fancy_tab_bar = false


config.window_background_opacity = 1.0

config.default_domain = 'WSL:Ubuntu'

-- and finally, return the configuration to wezterm
return config
