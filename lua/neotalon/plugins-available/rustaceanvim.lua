-- Install the Rustacean Vim plugin for Rust development
-- https://github.com/mrcjkb/rustaceanvim

return {
	"mrcjkb/rustaceanvim",
	version = "^6",
	lazy = true,
	event = "BufReadPost",
	opts = function()
		run_config("rustaceanvim")
	end,
}
