local wezterm = require 'wezterm'
local config = wezterm.config_builder()

require("keys").apply_to_config(config)

-- ── Font ────────────────────────────────────────────────────────────────────
config.font = wezterm.font('JetBrainsMono Nerd Font', { weight = 'Medium' })
config.font_size = 11.0
config.bold_brightens_ansi_colors = true
config.font_rules = {
  {
    intensity = "Bold",
    italic = true,
    font = wezterm.font({ family = "Maple Mono NF", weight = 'Bold', style = "Italic" }),
  },
  {
    intensity = "Half",
    italic = true,
    font = wezterm.font({ family = "Maple Mono NF", weight = "DemiBold", style = "Italic" }),
  },
  {
    intensity = "Normal",
    italic = true,
    font = wezterm.font({ family = "Maple Mono NF", style = "Italic" }),
  },
}

-- ── Appearance ──────────────────────────────────────────────────────────────
config.color_scheme = 'Tokyo Night'
config.window_padding = {
  left = 0,
  right = 0,
  top = 8,
  bottom = 0,
}
config.scrollback_lines = 10000
config.underline_thickness = 2
-- config.cursor_thickness = 4
config.underline_position = -6

-- Disable, Acrylic, Mica, Tabbed
config.window_background_opacity = 0.4
config.win32_system_backdrop = 'Acrylic'

config.window_decorations = 'INTEGRATED_BUTTONS|RESIZE'
config.initial_cols = 170
config.initial_rows = 35

-- ── Tab bar ────────────────────────────────────────────────────────────────
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = false
config.use_fancy_tab_bar = true
config.tab_bar_at_bottom = false
config.window_frame = {
  active_titlebar_bg = "none",
  inactive_titlebar_bg = "none",
}

-- ── WSL2 magic (this is the important part) ───────────────────────────────
if wezterm.target_triple == 'x86_64-pc-windows-msvc' then
  config.default_domain = 'WSL:Ubuntu-22.04'   -- ← CHANGE THIS!
end
-- How to find your exact distro name:
-- Open PowerShell and run: wsl -l -v
-- Then replace 'Ubuntu' with whatever shows up (e.g. 'Ubuntu-22.04', 'Debian', etc.)

-- ── Misc quality-of-life settings ─────────────────────────────────────────
config.audible_bell = 'Disabled'
config.default_cursor_style = 'BlinkingBar'
config.animation_fps = 60
config.max_fps = 144

-- You can add more stuff later (leader key, custom keybinds, etc.)

return config