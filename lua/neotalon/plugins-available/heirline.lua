return {
	{ "nvim-tree/nvim-web-devicons" },
	{ "lewis6991/gitsigns.nvim" },
	{
		"rebelot/heirline.nvim",
		event = "VeryLazy",
		opts = function()
			run_config("heirline")
		end,
	},
}
