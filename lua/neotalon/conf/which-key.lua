local M = {}

function M.setup()
	local wk = require("which-key")
	require("neotalon.keymaps.files")
	require("neotalon.keymaps.git")
	require("neotalon.keymaps.snacks")
	-- Neovim Top-level Keymaps
	wk.add({
		{ "<leader>q", "<cmd>q<cr>", desc = "Quit" },
		{ "<leader>Q", "<cmd>q!<cr>", desc = "Quit without saving" },
		{ "<leader>n", "<cmd>n<cr>", desc = "New" },
		{ "<leader>w", "<cmd>w<cr>", desc = "Save" },
		{ "<leader>CH", "<cmd>checkhealth<cr>", desc = "Check Health" },
		{ "<leader>H", "<cmd>help<cr>", desc = "Help" },
		{ "<leader>l", "<cmd>Lazy<cr>", desc = "Lazy" },
		{
			"<leader>z",
			function()
				Snacks.zen()
			end,
			desc = "Toggle Zen Mode",
		},
	})
end

return M
