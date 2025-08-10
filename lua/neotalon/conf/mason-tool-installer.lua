local M = {}

function M.setup()
	local plugin_list = merge_lists(get_lsp_servers() or {}, get_linter_tools() or {}, get_formatter_tools() or {})
	require("mason-tool-installer").setup({
		ensure_installed = plugin_list,
		auto_update = true,
		integrations = {
			["mason-lspconfig"] = true,
			["mason-nvim-dap"] = true,
		},
	})
end

return M
