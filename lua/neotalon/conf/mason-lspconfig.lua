local M = {}
local lsp_list = get_lsp_servers() or {}
local api = vim.api
local languages = require("neotalon.vars.languages")

function M.setup()
	require("mason-lspconfig").setup({
		automatic_enable = true,
		ensure_installed = {},
	})
	api.nvim_create_autocmd("BufEnter", {
		pattern = "*",
		callback = function()
			local ft = vim.bo.filetype
			if not ft or ft == "" then
				return
			end
			local lsp_servers = {}
			if languages[ft] then
				if languages[ft].lsp and languages[ft].lsp.enabled then
					lsp_servers = languages[ft].lsp.servers or {}
				end
			end
			for _, tool in ipairs(lsp_servers) do
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
