-- Install the mason-lspconfig which bridges the gap between mason and
-- lspconfig to make it simpler to use these plugins together.
-- https://github.com/mason-org/mason-lspconfig.nvim

return {
	"mason-org/mason.nvim",
	"mason-org/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
	lazy = true,
	event = "BufReadPost",
	config = function()
		run_config("mason-lspconfig")
	end,
}
