-- Install the mini plugun which provides a set of Lua modules to improve Neovim's functionality
-- https://github.com/echasnovski/mini.nvim

return {
	"echasnovski/mini.nvim",
	event = "VeryLazy",
	version = false,
	config = function()
		run_config("mini")
	end,
}
