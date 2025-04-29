local wezterm = require("wezterm")
local act = wezterm.action
local M = wezterm.config_builder()

M = {}

-- appearance
M.color_scheme = "Catppuccin Macchiato"
M.default_cursor_style = "BlinkingBar" -- 可选：BlinkingBlock, SteadyBar, BlinkingUnderline, etc.
M.enable_tab_bar = false
M.font_size = 12
M.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}
M.font = wezterm.font_with_fallback({
	{ family = "JetBrainsMono Nerd Font", weight = "Bold" },
	{ family = "Source Han Sans CN", weight = "Medium" },
})

M.window_background_opacity = 0.95
M.text_background_opacity = 0.9

-- Prompt
M.window_close_confirmation = "NeverPrompt"

-- keymap
M.keys = {
	-- Turn off the default CMD-m Hide action, allowing CMD-m to
	-- be potentially recognized and handled by the tab
	{
		-- 关闭默认键位
		key = "Enter",
		mods = "ALT",
		action = act.DisableDefaultAssignment,
	},
	{
		key = "w",
		mods = "SHIFT|ALT",
		action = act.CloseCurrentTab({ confirm = true }),
	},
	{
		key = "t",
		mods = "SHIFT|ALT",
		action = act.SpawnTab("CurrentPaneDomain"),
	},
	{ key = "k", mods = "SHIFT|CTRL", action = act.ScrollByPage(-0.5) },
	{ key = "j", mods = "SHIFT|CTRL", action = act.ScrollByPage(0.5) },
}
for i = 1, 8 do
	-- CTRL+ALT + number to activate that tab
	table.insert(M.keys, {
		key = tostring(i),
		mods = "CTRL|ALT",
		action = act.ActivateTab(i - 1),
	})
	-- F1 through F8 to activate that tab
	table.insert(M.keys, {
		key = "F" .. tostring(i),
		action = act.ActivateTab(i - 1),
	})
end

return M
