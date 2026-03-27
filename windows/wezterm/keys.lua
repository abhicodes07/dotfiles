local wezterm = require("wezterm")
local action = wezterm.action
local M = {}

---@param config Config
function M.apply_to_config(config)
    wezterm.on('update-right-status', function (window, pane)
        local name window = window:active_key_table()
        if name then
            name = 'TABLE: ' .. name
        end
        window.set_right_status(name or '')
    end)
end

return M