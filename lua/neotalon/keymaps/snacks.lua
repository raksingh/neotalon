local wk = require("which-key")
-- local Snacks = require("snacks")

wk.add({
	-- Add a label for g keymaps related to git
	{ "<leader>s", name = "Snacks" },
	{
		"<leader>sb",
		function()
			Snacks.picker.buffers()
		end,
		desc = "Buffers (Ctrl-b)",
	},
	{
		"<leader>sd",
		function()
			Snacks.bufdelete()
		end,
		desc = "Delete Buffer (Ctrl-d)",
	},
	{
		"<leader>se",
		function()
			Snacks.picker.explorer()
		end,
		desc = "Explore Files (Ctrl-e)",
	},
	{
		"<leader>sf",
		function()
			Snacks.picker.smart()
		end,
		desc = "Find Files (Ctrl-f)",
	},
	{
		"<leader>sg",
		function()
			Snacks.picker.grep()
		end,
		desc = "Grep Files (Ctrl-g)",
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
		"<leader>sD",
		function()
			Snacks.bufdelete.all()
		end,
		desc = "Delete All Buffers (Ctrl-D)",
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

-- Alternative keymaps
wk.add({
	-- Add a label for g keymaps related to git
	{
		"<c-b>",
		function()
			Snacks.picker.buffers()
		end,
		desc = "Buffers",
	},
	{
		"<c-d>",
		function()
			Snacks.bufdelete()
		end,
		desc = "Delete Buffer",
	},
	{
		"<c-e>",
		function()
			Snacks.picker.explorer()
		end,
		desc = "Explore Files",
	},
	{
		"<c-f>",
		function()
			Snacks.picker.smart()
		end,
		desc = "Find Files",
	},
	{
		"<c-g>",
		function()
			Snacks.picker.grep()
		end,
		desc = "Grep Files",
	},
	{
		"<c-D>",
		function()
			Snacks.bufdelete.all()
		end,
		desc = "Delete All Buffers",
	},
})
