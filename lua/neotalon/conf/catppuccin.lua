
local M = {}

function M.setup()
    require("catppuccin").setup({
        -- latte, frappe, macchiato, mocha flavours available
        flavour = "mocha", 
        transparent_background = true,
        term_colors = true,
        styles = {
        },
    })
end

return M 
