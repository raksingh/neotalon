-- File and Buffer shortcuts
local wk = require("which-key")

wk.add({
	-- Add a label for f keymaps related to snacks
	{ "<leader>f", name = "File" },
	{
		"<leader>fe",
		function()
			Snacks.explorer()
		end,
		desc = "Explore",
	},
	{
		"<leader>fg",
		function()
			Snacks.picker.grep()
		end,
		desc = "Grep",
	},
	{
		"<leader>fp",
		function()
			Snacks.picker()
		end,
		desc = "Pickers",
	},
	{
		"<leader>ff",
		function()
			Snacks.picker.files()
		end,
		desc = "Finder",
	},
	{
		"<leader>fb",
		function()
			Snacks.picker.buffers()
		end,
		desc = "Buffers",
	},
})

-- Only add if telescope is available
if not pcall(require, "telescope") then
	return
end
wk.add({
	-- Telescope keymaps
	{ "<leader>t", name = "Telescope" },
	{ "<leader>tf", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
	{ "<leader>tg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },
	{ "<leader>tc", "<cmd>Telescope grep_string<cr>", desc = "Grep Current Selection" },
	{ "<leader>tb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
	{ "<leader>to", "<cmd>Telescope oldfiles<cr>", desc = "Old Files" },
	{ "<leader>th", "<cmd>Telescope help_tags<cr>", desc = "Help Tags" },
})

if not pcall(require, "harpoon") then
	return
end
local harpoon = require("harpoon")
wk.add({
	{ "<leader>h", name = "Harpoon" },
	{
		"<leader>ha",
		function()
			harpoon:list():add()
			vim.notify("File added to Harpoon")
		end,
		desc = "Add File",
	},
	{
		"<leader>hl",
		function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end,
		desc = "List",
	},
	{
		"<leader>h1",
		function()
			harpoon:list():select(1)
			vim.notify("Switched to File 1: " .. vim.api.nvim_buf_get_name(0))
		end,
		desc = "File 1",
	},
	{
		"<leader>h2",
		function()
			harpoon:list():select(2)
			vim.notify("Switched to File 2: " .. vim.api.nvim_buf_get_name(0))
		end,
		desc = "File 2",
	},
	{
		"<leader>h3",
		function()
			harpoon:list():select(3)
			vim.notify("Switched to File 3: " .. vim.api.nvim_buf_get_name(0))
		end,
		desc = "File 3",
	},
	{
		"<leader>h4",
		function()
			harpoon:list():select(4)
			vim.notify("Switched to File 4: " .. vim.api.nvim_buf_get_name(0))
		end,
		desc = "File 4",
	},
	{
		"<leader>h5",
		function()
			harpoon:list():select(5)
			vim.notify("Switched to File 5: " .. vim.api.nvim_buf_get_name(0))
		end,
		desc = "File 5",
	},
	{
		"<leader>hn",
		function()
			harpoon:list():next()
		end,
		desc = "Next File",
	},
	{
		"<leader>hp",
		function()
			harpoon:list():prev()
		end,
		desc = "Previous File",
	},
})
