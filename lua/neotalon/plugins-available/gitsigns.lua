-- Gitsigns is a plugin that shows git diff signs in the sign column,
-- and allows you to stage/unstage hunks and navigate between them.
-- https://github.com/lewis6991/gitsigns.nvim

return {
	"lewis6991/gitsigns.nvim",
	lazy = true,
	event = { "BufReadPost", "LspAttach" },
	opts = {},
	config = function()
		run_config("git-signs")
	end,
}
