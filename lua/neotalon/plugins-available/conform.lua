-- Installs the conform.nvim plugin for code formatting
-- https://github.com/stevearc/conform.nvim

return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		run_config("conform")
	end,
}
