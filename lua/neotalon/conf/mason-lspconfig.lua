
local M = {}

function M.setup()
    require("mason-lspconfig").setup({
        automatic_enable = true,
        ensure_installed = lsp_list,
        ensure_installed = {},
    })
end

return M 
