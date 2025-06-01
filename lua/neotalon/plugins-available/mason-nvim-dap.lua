-- Install mason-nvim-dap to manage Debug Adapter Protocol plugins
-- https://github.com/jay-babu/mason-nvim-dap.nvim

return {
	"williamboman/mason.nvim",
	"mfussenegger/nvim-dap",
	"jay-babu/mason-nvim-dap.nvim",
	opts = function()
		run_config("mason-nvim-dap")
	end,
}
