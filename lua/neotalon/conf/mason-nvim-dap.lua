local M = {}

function M.setup()
	require("mason").setup()
	require("mason-nvim-dap").setup({
		automatic_installation = true,
	})
end

return M
