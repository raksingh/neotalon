local M = {}

function M.setup()
	local harpoon = require("harpoon")
	require("harpoon").setup({
		harpoon:setup(),
	})
end

return M
