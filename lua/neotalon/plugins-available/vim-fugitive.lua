-- Install the Vim Fugitive plugin for Git integration
-- https://github.com/tpope/vim-fugitive

return {
	"tpope/vim-fugitive",
	name = "vim-fugitive",
	event = "BufReadPost",
	config = function()
		run_config("vim-fugitive")
	end,
}
