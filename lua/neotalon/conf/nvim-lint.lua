local M = {}

function M.setup()
	local linter_list = get_linters()
	require("lint").linters_by_ft = linter_list

	-- This installs the linter tool only when the filetype is opened
	for ft, linters in pairs(linter_list) do
		vim.api.nvim_create_autocmd("FileType", {
			pattern = ft,
			callback = function()
				for _, linter in ipairs(linters) do
					local ok, registry = pcall(require, "mason-registry")
					if ok and registry.has_package(linter) then
						local pkg = registry.get_package(linter)
						if not pkg:is_installed() then
							pkg:install()
						end
					end
				end
			end,
		})
	end
	vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost", "InsertLeave" }, {
		callback = function()
			require("lint").try_lint()
		end,
	})
end

return M
