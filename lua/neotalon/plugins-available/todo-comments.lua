-- Install the TODO Comments plugin
-- https://github.com/folke/todo-comments.nvim

return {
	"folke/todo-comments.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	lazy = true,
	event = { "BufReadPost", "BufNewFile" },
	opts = function()
		run_config("todo-comments")
	end,
	-- lazy = false,
	-- event = { "BufReadPost", "BufNewFile" },
}
