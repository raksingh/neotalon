-- Install plugin to preview code definitions in a floating window
-- https://github.com/rmagatti/goto-preview

return {
	"rmagatti/goto-preview",
	dependencies = { "rmagatti/logger.nvim" },
	lazy = true,
	event = "BufEnter",
	opts = {},
	config = true,
}
