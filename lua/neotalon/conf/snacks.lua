local M = {}

function M.setup()
	vim.g.loaded_netrw = 1
	vim.g.loaded_netrwPlugin = 1
	vim.api.nvim_create_user_command("Ex", "lua Snacks.picker.explorer()", {})
	require("snacks").setup({})
end

return M
