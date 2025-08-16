local M = {}

function M.setup()
	local wk = require("which-key")
	-- Neovim Top-level Keymaps
	wk.add({
		{ "<leader>n", "<cmd>n<cr>", desc = "New" },
		{ "<leader>l", "<cmd>Lazy<cr>", desc = "Lazy" },
		{ "<leader>w", "<cmd>w<cr>", desc = "Save" },
		{ "<leader>q", "<cmd>q<cr>", desc = "Quit" },
		{ "<leader>Q", "<cmd>q!<cr>", desc = "Quit without saving" },
		{ "<leader>C", "<cmd>checkhealth<cr>", desc = "Check Health" },
		{ "<leader>H", "<cmd>help<cr>", desc = "Help" },
	})
end

return M
