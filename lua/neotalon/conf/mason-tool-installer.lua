
local M = {}

function M.setup()
    local plugin_list = merge_lists(
        lsp_list or {},
        debugger_list or {},
        ale_mason_linter_list or {},
        ale_mason_fixer_list or {}
    )
    -- Automatically install ALE linters and fixers
    require("mason-tool-installer").setup({
        ensure_installed = plugin_list,
        auto_update = true,
        integrations = {
            ["mason-lspconfig"] = true,
            ["mason-nvim-dap"] = true,
        }
    })
end

return M
