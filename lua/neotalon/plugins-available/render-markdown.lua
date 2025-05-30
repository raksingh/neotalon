return {
	"MeanderingProgrammer/render-markdown.nvim",
	lazy = true,
	event = "LspAttach",
	dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
	---@module "render-markdown"
	---@type render.md.UserConfig
	opts = {},
	config = function()
		run_config("render-markdown")
	end,
}
