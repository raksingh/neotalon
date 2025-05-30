local M = {}
function M.setup()
    require("nvim-treesitter.configs").setup({
        prefer_git = true,
        ensure_installed = lang_list,
        sync_install = true,
        auto_install = TREESITTER_AUTO_INSTALL,
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = true,
        },
        indent = {
            enable = true,
        },
        folding = {
            enable = true,
        },
        context_commentstring = {
            enable = true,
            enable_autocmd = false,
        },
        rainbow = {
            enable = true,
            extended_mode = true,
            max_file_lines = nil,
        },
        autotag = {
            enable = true,
            filetypes = {
                "html",
                "xml",
                "javascript",
                "typescript",
                "javascriptreact",
                "typescriptreact",
                "svelte",
                "vue",
            },
        },
        
    })
end


return M

