local M = {}

function M.setup()
	require("neovim-project").setup({
		-- Project directories
		projects = {
			"~/Source/*",
			"~/Projects/*",
			"~/.config/*",
		},
		-- Pickers: snacks, telescope, or fzf-lua
		picker = { type = "snacks" },
	})
end

return M
