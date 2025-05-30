-- Install the uv plugin to integrate uv Python package and venv management
-- into Neovim
-- https://github.com/benomahony/uv.nvim

return {
	"benomahony/uv.nvim",
	lazy = true,
	event = "VeryLazy",
	config = function()
		require("uv").setup()
	end,
}
