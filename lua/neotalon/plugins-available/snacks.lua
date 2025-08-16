-- Install snacks, a useful collection of small quality-of-life plugins
-- https://github.com/folke/snacks.nvim
-- Enable/disable specific snacks by modifying the SNACK_PLUGINS variable in
-- neotalon.vars.snacks

require("neotalon.vars.snacks")

return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	---@type snacks.Config
	opts = SNACK_PLUGINS or {
		dasboard = { enabled = false },
	},
	config = function()
		run_config("snacks")
	end,
}
