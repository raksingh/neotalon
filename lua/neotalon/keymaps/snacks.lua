local wk = require("which-key")

wk.add({
	-- Add a label for g keymaps related to git
	{ "<leader>s", name = "Snacks" },
	{
		"<leader>sb",
		function()
			Snacks.picker.buffers()
		end,
		desc = "Buffers",
	},
	{
		"<leader>se",
		function()
			Snacks.picker.explorer()
		end,
		desc = "Explore Files",
	},
	{
		"<leader>sf",
		function()
			Snacks.picker.smart()
		end,
		desc = "Find Files",
	},
	{
		"<leader>sg",
		function()
			Snacks.picker.grep()
		end,
		desc = "Grep Files",
	},
	{
		"<leader>st",
		function()
			Snacks.terminal.toggle()
		end,
		desc = "Terminal",
	},
	{
		"<leader>sz",
		function()
			Snacks.zen()
		end,
		desc = "Zen Mode Toggle",
	},
	{
		"<leader>sH",
		function()
			Snacks.picker.help_tags()
		end,
		desc = "Help Tags",
	},
	{
		"<leader>s:",
		function()
			Snacks.picker.commands()
		end,
		desc = "Commands",
	},
	{
		"<C-/>",
		function()
			Snacks.terminal.toggle()
		end,
		desc = "Toggle Terminal",
	},
})
