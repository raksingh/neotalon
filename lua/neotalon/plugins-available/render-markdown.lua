return {
	"MeanderingProgrammer/render-markdown.nvim",
	event = "LspAttach",
	dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
	---@module "render-markdown"
	---@type render.md.UserConfig
	opts = {},
	config = function()
		run_config("render-markdown")
	end,
}
