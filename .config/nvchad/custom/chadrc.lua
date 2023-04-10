---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.plugins = "custom.plugins"

M.ui = {
   theme = "vscode_dark",
   theme_toggle = { "onedark", "one_light" },
   hl_override = highlights.override,
   hl_add = highlights.add,
   statusline = {
      theme = "vscode_colored",
      separator_style = "block",
   },
}

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M

