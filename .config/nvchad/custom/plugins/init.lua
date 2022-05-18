return {
  ["projekt0n/github-nvim-theme"] = {
     config = function()
        require "custom.plugins.github-nvim-theme"
     end,
  },
  ["karb94/neoscroll.nvim"] = {
     config = function()
        require("neoscroll").setup()
     end,
     -- lazy loading
     setup = function()
       nvchad.packer_lazy_load "neoscroll.nvim"
     end,
  },
}
