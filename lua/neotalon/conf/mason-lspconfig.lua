local M = {}
local lsp_list = get_lsp_servers() or {}
function M.setup()
	require("mason-lspconfig").setup({
		automatic_enable = true,
		ensure_installed = lsp_list,
	})
end

return M
