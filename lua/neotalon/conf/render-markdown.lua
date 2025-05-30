local M = {}

function M.setup()
    local cmp = require("cmp")
    require("render-markdown").setup({
        completions = { lsp = { enabled = true } },

    })
    cmp.setup({
        sources = cmp.config.sources({
            { name = "render_markdown" },
        }, {
            { name = "buffer" },
        }),
    })
end

return M 
