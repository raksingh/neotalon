local M = {}

function M.setup()
	require("vim-fugitive").setup({
		-- Setting basic options for vim-fugitive
		git_executable = "git",
		enable_signs = true,
	})
end

return M
