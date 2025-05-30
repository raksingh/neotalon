-- Install nvim-cmp for code completion
-- https://github.com/hrsh7th/nvim-cmp

return {
	{ "neovim/nvim-lspconfig" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/cmp-buffer" },
	{ "hrsh7th/nvim-cmp" },
	{ "hrsh7th/cmp-path" },
	{ "hrsh7th/cmp-cmdline" },
	{ "saadparwaiz1/cmp_luasnip" },
	{ "L3MON4D3/LuaSnip" },
	{ "rafamadriz/friendly-snippets" },
	{ "zbirenbaum/copilot-cmp" },
	{
		"hrsh7th/cmp-nvim-lua",
		lazy = true,
		event = { "InsertEnter", "LspAttach" },
		config = function()
			run_config("nvim-cmp")
		end,
	},
}
