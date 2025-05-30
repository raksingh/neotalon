local M = {}

function M.setup()
    require("gitsigns").setup({
        current_line_blame_formatter = '<author>, <author_time:%R> - <summary>'
    })
end

return M 
