-- Only add if neogit is available
if not pcall(require, "snacks") then
	return
end

local wk = require("which-key")
wk.add({
	-- Add a label for g keymaps related to git
	{ "<leader>s", name = "Snacks" },
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
		"<leader>se",
		function()
			Snacks.picker.explorer()
		end,
		desc = "Explore Files",
	},
	{
		"<leader>sb",
		function()
			Snacks.picker.buffers()
		end,
		desc = "Buffers",
	},
	{
		"<leader>s:",
		function()
			Snacks.picker.commands()
		end,
		desc = "Commands",
	},
	{
		"<leader>sH",
		function()
			Snacks.picker.help_tags()
		end,
		desc = "Help Tags",
	},
	{
		"<leader>sO",
		function()
			Snacks.picker.options()
		end,
		desc = "Options",
	},
})
