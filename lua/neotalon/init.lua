-- Load keymaps and default variables
require("neotalon.keymaps")
require("neotalon.vars")
require("neotalon.functions")

-- Check if a file exists and returns true or false
local function file_exists(name)
	local f = io.open(name, "r")
	if f ~= nil then
		io.close(f)
		return true
	else
		return false
	end
end

-- Executes the setup in the given filename (without the extension)
-- if it exists in the ./conf directory
-- Note that Lazy prefers opts to config
-- Eg.
--   opts = function()
--       run_config("mason")
--   end
function run_config(filename)
	local conf_file = "neotalon.conf." .. filename
	local conf_path = vim.fn.stdpath("config") .. "/lua/" .. conf_file:gsub("%.", "/") .. ".lua"
	if file_exists(conf_path) then
		local status, conf = pcall(require, conf_file)
		if status then
			if type(conf) == "table" and conf.setup then
				conf.setup()
			end
		else
			vim.notify("Error loading configuration for " .. filename .. ": " .. conf, vim.log.levels.ERROR)
		end
	else
		vim.notify("Configuration file " .. conf_path .. " not found.", vim.log.levels.WARN)
	end
end

-- Print debug messages if DEBUG is true
function debug_print(msg)
	if DEBUG then
		vim.notify(msg, vim.log.levels.DEBUG)
	end
end

-- Combine multiple lists into one
function merge_lists(...)
	local merged = {}
	for i = 1, select("#", ...) do
		local list = select(i, ...)
		for _, v in ipairs(list) do
			table.insert(merged, v)
		end
	end
	return merged
end

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	print("Installing lazy.nvim plugin manager...")
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({
	spec = {
		-- import your plugins
		{ import = "neotalon.plugins-enabled" },
	},
	-- automatically check for plugin updates
	checker = { enabled = true },
})

-- Set colorscheme. ignore errors if colorscheme is not found
local status, _ = pcall(vim.cmd.colorscheme, COLOR_SCHEME)
if not status then
	-- Fallback to a default colorscheme if the specified one is not found
	vim.cmd.colorscheme(FALLBACK_COLOR_SCHEME)
	return
end

-- Set up the Neovim options based on the values in the vars.lua file
vim.opt.expandtab = EXPAND_TAB
vim.opt.tabstop = TAB_SIZE
vim.opt.shiftwidth = TAB_SIZE
vim.opt.autoindent = AUTO_INDENT
vim.opt.colorcolumn = string.format("%d", COLOR_COLUMN)
vim.opt.cursorline = CURSOR_LINE
vim.opt.relativenumber = RELATIVE_NUMBERS
vim.opt.number = LINE_NUMBERS
vim.opt.mouse = ENABLE_MOUSE and "a" or ""

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  float = { border = "rounded" },
})
