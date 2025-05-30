-- See SNACK_PLUGINS in vars.lua to enable/disable snacks


local M = {}

function M.setup()
    --- @type snacks.Config
        require("snacks").setup({
            banner = {
                "Welcome to NeoTalon!",
                "Your productivity booster",
                "Happy coding!",
            },
            SNACK_PLUGINS
        })
end

return M


