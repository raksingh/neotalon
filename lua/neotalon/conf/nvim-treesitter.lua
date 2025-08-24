local M = {}
local lang_list = get_all_languages()

function M.setup()
	require("nvim-treesitter.configs").setup({
		prefer_git = true,
		auto_install = true,
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = true,
		},
		indent = {
			enable = true,
		},
		folding = {
			enable = true,
		},
		context_commentstring = {
			enable = true,
			enable_autocmd = false,
		},
		rainbow = {
			enable = true,
			extended_mode = true,
			max_file_lines = nil,
		},
		autotag = {
			enable = true,
			filetypes = {
				"html",
				"xml",
				"javascript",
				"typescript",
				"javascriptreact",
				"typescriptreact",
				"svelte",
				"vue",
			},
		},
	})

	local ts_parsers = require("nvim-treesitter.parsers")

	local api = vim.api

	api.nvim_create_autocmd("BufEnter", {
		pattern = "*",
		callback = function()
			local ft = vim.bo.filetype
			if not ft or ft == "" then
				return
			end
			local lang = vim.treesitter.language.get_lang(ft)
			if not lang then
				return
			end
			local parser_ok = pcall(vim.treesitter.get_parser, 0, lang)
			if not parser_ok then
				if table_contains(lang_list, lang) == true then
					vim.cmd("TSInstall " .. lang)
				end
			end
		end,
	})
end

return M
