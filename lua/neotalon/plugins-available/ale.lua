-- ALE (Asynchronous Lint Engine) is a code linting and fixing plugin for Neovim.
-- It provides real-time linting and fixing capabilities for various programming languages.
-- https://github.com/dense-analysis/ale

return {
	"dense-analysis/ale",
	event = { "BufReadPre", "BufNewFile" },
	opts = function()
		run_config("ale")
	end,
}
