-- Just an example, supposed to be placed in /lua/custom/

local M = {
}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

local userPlugins = require "custom.plugins"

M.plugins = {
   user = userPlugins,
   override = {
      ["NvChad/ui"] = {
         statusline = {
            separator_style = "block",
         },
      },
   }
}

M.ui = {
   theme = "vscode_dark",
}

return M
   