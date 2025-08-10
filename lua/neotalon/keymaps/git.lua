-- Only add if neogit is available
if not pcall(require, "neogit") then
	return
end

local wk = require("which-key")
wk.add({
	{ "<leader>g", name = "Git" },
	{ "<leader>gs", "<cmd>Neogit<cr>", desc = "Status" },
	{ "<leader>gc", "<cmd>Neogit commit<cr>", desc = "Commit" },
	{ "<leader>gp", "<cmd>Neogit push<cr>", desc = "Push" },
	{ "<leader>gl", "<cmd>Neogit pull<cr>", desc = "Pull" },
	{ "<leader>gd", "<cmd>Neogit diff<cr>", desc = "Diff" },
})
