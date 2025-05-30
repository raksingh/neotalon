
local M = {}

function M.setup()
    vim.g.ale_linters = ale_linter_dict
    vim.g.ale_fixers = ale_fixer_dict
    vim.g.ale_linters_explicit = true
    vim.g.ale_fixers_explicit = true
    vim.g.ale_fix_on_save = 1
    vim.g.ale_lint_on_insert_leave = 1
    vim.g.ale_lint_on_text_changed = 'never'
    vim.g.ale_echo_cursor = 0
    vim.g.ale_completion_enabled = 1
    vim.g.ale_sign_column_always = 1    
end

return M
