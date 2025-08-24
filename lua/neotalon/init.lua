-- Source all variable files in the vars directory
require("neotalon.vars.colors")
require("neotalon.vars.snacks")
require("neotalon.vars.vim")
LANGUAGES = require("neotalon.vars.languages")
_G.vim = vim

-- Source the default vim key mappings
require("neotalon.keymaps.vim")

-- Load other required configurations
require("neotalon.conf.vim")

-- Load Neotalon functions
require("neotalon.functions")

-- Install and configure the Lazy Plugin Manager
require("neotalon.conf.lazy")

-- Set the colorscheme
local status, _ = pcall(vim.cmd.colorscheme, COLORSCHEME)
if not status then
	local msg = "Colorscheme '" .. COLORSCHEME .. "' not found. Falling back to '" .. FALLBACK_COLORSCHEME .. "'."
	vim.notify(msg, vim.log.levels.WARN)
	vim.cmd.colorscheme(FALLBACK_COLORSCHEME)
	return
end

-- Use Snacks Explorer as the default file manager
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    local args = vim.fn.argv()
    if #args == 1 and vim.fn.isdirectory(args[1]) == 1 then
      -- Open Snacks explorer picker when entering a directory
      require("snacks.explorer").open()
      -- Close the default Ex buffer/window if it is open
      if vim.bo.filetype == "netrw" or vim.bo.filetype == "explorer" then
        vim.cmd("bdelete!")  
      end
    end
  end,
})

