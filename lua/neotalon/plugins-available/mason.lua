-- Mason is a package manager for Neovim that simplifies the installation
-- and management of external tools, such as language servers, linters, and formatters.

return {
	"mason-org/mason.nvim",
	lazy = true,
	event = "BufReadPost",
	opts = function()
		run_config("mason")
	end,
}
