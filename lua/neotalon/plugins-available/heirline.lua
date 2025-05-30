return {
	{ "nvim-tree/nvim-web-devicons" },
	{ "lewis6991/gitsigns.nvim" },
	{
		"rebelot/heirline.nvim",
		event = "UIEnter",
		lazy = true,
		opts = function()
			run_config("heirline")
		end,
	},
}
