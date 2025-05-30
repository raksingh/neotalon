-- Install the Lua replacement for github.com/copilot
-- Execute command `:Copilot auth` after installation
-- https://github.com/zbirenbaum/copilot.lua

return {
	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	event = "InsertEnter",
	config = function()
		run_config("copilot")
	end,
}
