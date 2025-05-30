-- Install the Copilot completion plugin
-- https://github.com/zbirenbaum/copilot-cmp

return {
	"zbirenbaum/copilot-cmp",
	dependencies = { "zbirenbaum/copilot.lua" },
	event = { "InsertEnter", "LspAttach" },
	fix_pairs = true,
	config = function()
		run_config("copilot-cmp")
	end,
}
