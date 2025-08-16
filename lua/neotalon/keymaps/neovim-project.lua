local wk = require("which-key")

wk.add({
	{ "<leader>p", name = "Projects" },
	{ "<leader>pd", "<cmd>NeovimProjectDiscover alphabetical_name<cr>", desc = "Discover" },
	{ "<leader>ph", "<cmd>NeovimProjectHistory<cr>", desc = "History" },
	{ "<leader>pl", "<cmd>NeovimProjectLoad<cr>", desc = "Load" },
})
