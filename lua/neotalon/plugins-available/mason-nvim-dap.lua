-- Install mason-nvim-dap to manage Debug Adapter Protocol plugins
-- https://github.com/jay-babu/mason-nvim-dap.nvim

return {
	{ "williamboman/mason.nvim", event = { "BufReadPre", "BufNewFile" } },
	{ "mfussenegger/nvim-dap", event = { "BufReadPre", "BufNewFile" } },
	{
		"jay-babu/mason-nvim-dap.nvim",
		event = { "BufReadPre", "BufNewFile", "VeryLazy"},
		dependencies = { "williamboman/mason.nvim", "mfussenegger/nvim-dap" },
	},
	opts = function()
		run_config("mason-nvim-dap")
	end,
}
