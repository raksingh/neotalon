-- Install the mason-tool-installer to install and update third-party tools
-- https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim

return {
	"WhoIsSethDaniel/mason-tool-installer.nvim",
	config = function()
		run_config("mason-tool-installer")
	end,
}
