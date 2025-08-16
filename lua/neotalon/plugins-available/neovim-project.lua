-- Install the neovim-project plugin for simplified project management
-- https://github.com/coffebar/neovim-project

return {
	"coffebar/neovim-project",
	opts = {},
	init = function()
		-- enable saving the state of plugins in the session
		vim.opt.sessionoptions:append("globals") -- save global variables that start with an uppercase letter and contain at least one lowercase letter.
	end,
	dependencies = {
		{ "nvim-lua/plenary.nvim" },
		-- optional picker
		{ "ibhagwan/fzf-lua" },
		{ "Shatur/neovim-session-manager" },
	},
	lazy = false,
	priority = 100,
	config = function()
		run_config("neovim-project")
	end,
}
