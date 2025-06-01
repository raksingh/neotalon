local M = {}

function M.setup()
	local wk = require("which-key")
	-- Neovim Top-level Keymaps
	wk.add({
		{ "<leader>q", "<cmd>q<cr>", desc = "Quit" },
		{ "<leader>Q", "<cmd>q!<cr>", desc = "Quit without saving" },
		{ "<leader>n", "<cmd>n<cr>", desc = "New" },
		{ "<leader>w", "<cmd>w<cr>", desc = "Save" },
		{ "<leader>H", "<cmd>checkhealth<cr>", desc = "Check Health" },
		{ "<leader>h", "<cmd>help<cr>", desc = "Help" },
		{ "<leader>l", "<cmd>Lazy<cr>", desc = "Lazy" },
		{ "<C-/>", "<cmd>ToggleTerm<cr>", desc = "Toggle Terminal" },
	})

	-- File Explorer Keymaps
	wk.add({
		{ "<leader>f", group = "File" },
		{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
		{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },
		{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
		{ "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent Files" },
		{ "<leader>fe", "<cmd>Neotree toggle<cr>", desc = "Toggle File Explorer" },
	})

	-- Buffer Keymaps
	wk.add({
		{ "<leader>b", group = "Buffer" },
		{ "<leader>bn", "<cmd>enew<cr>", desc = "New Buffer" },
		{ "<leader>bd", "<cmd>bd<cr>", desc = "Delete Buffer" },
		{ "<leader>bD", "<cmd>bd!<cr>", desc = "Force Delete Buffer" },
		{ "<leader>bl", "<cmd>ls<cr>", desc = "List Buffers" },
		{ "<leader>bp", "<cmd>bprevious<cr>", desc = "Previous Buffer" },
		{ "<leader>bn", "<cmd>bnext<cr>", desc = "Next Buffer" },
		{ "<leader>bc", "<cmd>bdelete<cr>", desc = "Close Buffer" },
	})

	-- Code Keymaps
	wk.add({
		{ "<leader>c", group = "Code" },
		{ "<leader>cf", "<cmd>ALEFix<cr>", desc = "Format Code (ALE)" },
		{ "<leader>cc", "<cmd>ALELint<cr>", desc = "Run Linter (ALE)" },
		{ "<leader>cd", "<cmd>ALEDetail<cr>", desc = "Show Linter Details (ALE)" },
		{ "<leader>ce", "<cmd>ALEToggle<cr>", desc = "Toggle ALE" },
	})

	-- Git Keymaps
	wk.add({
		{ "<leader>g", group = "Git" },
		{ "<leader>gs", "<cmd>Git status<cr>", desc = "Git Status (Fugitive)" },
		{ "<leader>gc", "<cmd>Git commit<cr>", desc = "Git Commit (Fugitive)" },
		{ "<leader>gp", "<cmd>Git push<cr>", desc = "Git Push (Fugitive)" },
		{ "<leader>gl", "<cmd>Git pull<cr>", desc = "Git Pull (Fugitive)" },
		{ "<leader>gb", "<cmd>Git branch<cr>", desc = "Git Branch (Fugitive)" },
		{ "<leader>gd", "<cmd>Gvdiffsplit<cr>", desc = "Git Diff Split (Fugitive)" },
		{ "<leader>gh", "<cmd>Gitsigns preview_hunk<cr>", desc = "Preview Hunk (Gitsigns)" },
		{ "<leader>gr", "<cmd>Gitsigns reset_hunk<cr>", desc = "Reset Hunk (Gitsigns)" },
		{ "<leader>gR", "<cmd>Gitsigns reset_buffer<cr>", desc = "Reset Buffer (Gitsigns)" },
		{ "<leader>gn", "<cmd>Gitsigns next_hunk<cr>", desc = "Next Hunk (Gitsigns)" },
		{ "<leader>gp", "<cmd>Gitsigns prev_hunk<cr>", desc = "Previous Hunk (Gitsigns)" },
		{ "<leader>gS", "<cmd>Gitsigns stage_hunk<cr>", desc = "Stage Hunk (Gitsigns)" },
		{ "<leader>gu", "<cmd>Gitsigns undo_stage_hunk<cr>", desc = "Undo Stage Hunk (Gitsigns)" },
	})

	-- Barbar Keymaps
	wk.add({
		{ "<leader>B", group = "Barbar" },
		{ "<A-1>", "<Cmd>BufferGoto 1<CR>", desc = "Go to Buffer 1" },
		{ "<A-2>", "<Cmd>BufferGoto 2<CR>", desc = "Go to Buffer 2" },
		{ "<A-3>", "<Cmd>BufferGoto 3<CR>", desc = "Go to Buffer 3" },
		{ "<A-4>", "<Cmd>BufferGoto 4<CR>", desc = "Go to Buffer 4" },
		{ "<A-5>", "<Cmd>BufferGoto 5<CR>", desc = "Go to Buffer 5" },
		{ "<A-6>", "<Cmd>BufferGoto 6<CR>", desc = "Go to Buffer 6" },
		{ "<A-7>", "<Cmd>BufferGoto 7<CR>", desc = "Go to Buffer 7" },
		{ "<A-8>", "<Cmd>BufferGoto 8<CR>", desc = "Go to Buffer 8" },
		{ "<A-9>", "<Cmd>BufferGoto 9<CR>", desc = "Go to Buffer 9" },
		{ "<A-0>", "<Cmd>BufferLast<CR>", desc = "Go to Last Buffer" },
	})

	-- Snacks Keymaps
	wk.add({
		{ "<leader>s", group = "Snacks" },
		{
			"<leader>se",
			function()
				Snacks.explorer()
			end,
			desc = "Explorer",
		},
		{
			"<leader>sb",
			function()
				Snacks.picker.buffers()
			end,
			desc = "Buffers",
		},
		{
			"<leader>sg",
			function()
				Snacks.picker.grep()
			end,
			desc = "Grep",
		},
		{
			"<leader>sn",
			function()
				Snacks.picker.notifications()
			end,
			desc = "Notification History",
		},
		{
			"<leader>sl",
			function()
				Snacks.lazygit()
			end,
			desc = "LazyGit",
		},
		{
			"<leader>st",
			function()
				Snacks.terminal()
			end,
			desc = "Terminal",
		},
	})

	-- Mason Keymaps
	wk.add({
		{ "<leader>m", group = "Mason" },
		{ "<leader>ml", "<cmd>Mason<cr>", desc = "Mason" },
		{ "<leader>mi", "<cmd>MasonInstall<cr>", desc = "Mason Install" },
		{ "<leader>mu", "<cmd>MasonUninstall<cr>", desc = "Mason Uninstall" },
		{ "<leader>ms", "<cmd>MasonSync<cr>", desc = "Mason Sync" },
		{ "<leader>mc", "<cmd>MasonCheck<cr>", desc = "Mason Check" },
	})

	-- ALE Keymaps
	wk.add({
		{ "<leader>a", group = "ALE" },
		{ "<leader>ai", "<cmd>ALEInfo<cr>", desc = "ALE Info" },
		{ "<leader>al", "<cmd>ALELint<cr>", desc = "ALE Lint" },
		{ "<leader>af", "<cmd>ALEFix<cr>", desc = "ALE Fix" },
		{ "<leader>at", "<cmd>ALEToggle<cr>", desc = "ALE Toggle" },
	})
end

return M
