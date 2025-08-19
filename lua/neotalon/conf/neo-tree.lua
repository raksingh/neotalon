local M = {}

function M.setup()
	require("neo-tree").setup({
		close_if_last_window = true,
		enable_git_status = true,
		enable_diagnostics = false,
		sort_case_insensitive = false,
		filesystem = {
			filtered_items = {
				visible = true,
				hide_dotfiles = false,
				hide_gitignored = false,
				hide_hidden = false,
				never_show = { ".DS_Store", "thumbs.db" },
				never_show_by_pattern = { ".git", ".hg", ".svn" },
			},
		},
	})
end

return M
