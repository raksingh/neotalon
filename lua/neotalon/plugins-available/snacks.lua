-- Install snacks, a useful collection of small quality-of-life plugins
-- https://github.com/folke/snacks.nvim
return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    -- ---@type snacks.Config
    -- opts = SNACK_PLUGINS,
    
    
    opts = function()
        --- @type snacks.Config
        run_config("snacks")
    end,
}
