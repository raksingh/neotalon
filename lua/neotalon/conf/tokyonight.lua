
local M = {}

function M.setup()
    require("tokyonight").setup({
        -- Available styles: storm, moon, day, night
        style = "night",
        transparent = true,
        styles = {
            sidebars = "transparent",
            floats = "transparent",
        },
    })
end

return M
