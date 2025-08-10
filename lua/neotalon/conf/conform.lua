local M = {}

function M.setup()
	local formatters = get_formatters() or {}
	require("conform").setup({
		format_on_save = true,
		lint_on_save = true,
		auto_install = true,
		formatters_by_ft = formatters,
	})
	format_on_save = {
		lsp_fallback = true,
		timeout_ms = 500,
	}
	vim.api.nvim_create_autocmd("BufWritePre", {
		pattern = "*",
		callback = function(args)
			require("conform").format({ bufnr = args.buf })
		end,
	})
end

return M
