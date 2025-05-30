-- Set up keymaps for Neovim

-- Map leader key to Space
vim.keymap.set("", "<Space>", "<Nop>", { noremap = true, silent = true })
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Toggle Terminal and enter insert mode
TERM_TOGGLE_KEYMAP = "<C-_>"
vim.keymap.set("n", TERM_TOGGLE_KEYMAP, ":ToggleTerm<CR>", { noremap = true, silent = true })
vim.keymap.set("t",TERM_TOGGLE_KEYMAP, "<C-\\><C-n>:ToggleTerm<CR>", { noremap = true, silent = true })

-- Moving lines of code in a buffer
-- single-line
vim.keymap.set("n", "<A-j>", ":move .+1<CR>==")
vim.keymap.set("n", "<A-k>", ":move .-2<CR>==")
-- multi-line
vim.keymap.set("v", "<A-j>", ":move '>+1<CR>gv=gv")
vim.keymap.set("v", "<A-k>", ":move '<-2<CR>gv=gv")

-- Goto-Preview Keymaps
vim.keymap.set("n", "gpd", "<cmd>lua require('goto-preview').goto_preview_definition()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "gpt", "<cmd>lua require('goto-preview').goto_preview_type_definition()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "gpi", "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "gpD", "<cmd>lua require('goto-preview').goto_preview_declaration()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "gP", "<cmd>lua require('goto-preview').close_all_win()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "gpr", "<cmd>lua require('goto-preview').goto_preview_references()<CR>", { noremap = true, silent = true })


-- See conf/which-key.lua for more shortcut mappings
