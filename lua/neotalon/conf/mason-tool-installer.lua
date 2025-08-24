local M = {}
local api = vim.api
local languages = require("neotalon.vars.languages")

function M.setup()
	local plugin_list = merge_lists(get_lsp_servers() or {}, get_linter_tools() or {}, get_formatter_tools() or {})
	require("mason-tool-installer").setup({
		-- ensure_installed = plugin_list,
		auto_update = true,
		integrations = {
			["mason-lspconfig"] = true,
			["mason-nvim-dap"] = true,
		},
	})

	api.nvim_create_autocmd("BufEnter", {
		pattern = "*",
		callback = function()
			local ft = vim.bo.filetype
			if not ft or ft == "" then
				return
			end
			-- Get lsp, linter and formatter that's enabled for this filetype
			local lsp_servers = {}
			local linters = {}
			local formatters = {}
			if languages[ft] then
				if languages[ft].lsp and languages[ft].lsp.enabled then
					lsp_servers = languages[ft].lsp.servers or {}
				end
				if languages[ft].linter and languages[ft].linter.enabled then
					linters = languages[ft].linter.tools or {}
				end
				if languages[ft].formatter and languages[ft].formatter.enabled then
					formatters = languages[ft].formatter.tools or {}
				end
			end
			local to_install = merge_lists(lsp_servers, linters, formatters)
			for _, tool in ipairs(to_install) do
				local ok, registry = pcall(require, "mason-registry")
				if ok and registry.has_package(tool) then
					local pkg = registry.get_package(tool)
					if not pkg:is_installed() then
						pkg:install()
					end
				end
			end
		end,
	})
end

return M
