-- Just an example, supposed to be placed in /lua/custom/

-- Change vim colorscheme
vim.cmd("colorscheme github_dark_default")
vim.cmd("set termguicolors")
vim.cmd("set background=dark")
vim.cmd([[
  hi Normal   guibg=NONE  ctermbg=NONE
  hi NonText  guibg=NONE  ctermbg=NONE
  hi LineNr   guibg=NONE  ctermbg=NONE
]])

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

local userPlugins = require "custom.plugins"

M.plugins = {
   user = userPlugins,
}

M.ui = {
   -- theme = "github_dark",
}

return M
