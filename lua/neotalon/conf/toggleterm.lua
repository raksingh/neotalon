local M = {}

function M.setup()
	require("toggleterm").setup({
		open_mapping = TERMTOGGLE_KEY,
		on_open = function(term)
			vim.cmd("startinsert!")
			vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", { noremap = true, silent = true })
		end,
		on_close = function(term)
			vim.cmd("startinsert!")
		end,
		on_create = function(term)
			vim.cmd("startinsert!")
		end,
		size = 20,
		hide_numbers = true,
		shade_filetypes = {},
		shade_terminals = true,
		shading_factor = 2,
		start_in_insert = true,
		insert_mappings = true,
		persist_size = true,
		direction = "horizontal",
		close_on_exit = true,
		shell = vim.o.shell,
	})
end

return M
