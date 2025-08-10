-- Language-specific configuration table (alphabetical, major Neovim LSP support)
-- This module returns a table of language configs for use elsewhere.
-- Usage: local languages = require("neotalon.vars.languages")

local languages = {
	bash = {
		lsp = { enabled = true, servers = { "bashls" } },
		linter = { enabled = true, tools = { "shellcheck" } },
		formatter = { enabled = true, tools = { "shfmt" } },
	},
	c = {
		lsp = { enabled = true, servers = { "clangd" } },
		linter = { enabled = true, tools = { "cpplint" } },
		formatter = { enabled = true, tools = { "clang-format" } },
	},
	cpp = {
		lsp = { enabled = false, servers = { "clangd" } },
		linter = { enabled = false, tools = {} },
		formatter = { enabled = false, tools = { "clang-format" } },
	},
	css = {
		lsp = { enabled = false, servers = { "cssls" } },
		linter = { enabled = false, tools = {} },
		formatter = { enabled = false, tools = { "prettier" } },
	},
	dockerfile = {
		lsp = { enabled = true, servers = { "dockerls" } },
		linter = { enabled = false, tools = {} },
		formatter = { enabled = true, tools = { "prettier" } },
	},
	go = {
		lsp = { enabled = false, servers = { "gopls" } },
		linter = { enabled = false, tools = {} },
		formatter = { enabled = false, tools = { "gofumpt" } },
	},
	html = {
		lsp = { enabled = true, servers = { "html" } },
		linter = { enabled = true, tools = { "htmlhint" } },
		formatter = { enabled = true, tools = { "prettier" } },
	},
	java = {
		lsp = { enabled = false, servers = { "jdtls" } },
		linter = { enabled = false, tools = {} },
		formatter = { enabled = false, tools = { "google-java-format" } },
	},
	javascript = {
		lsp = { enabled = false, servers = { "tsserver" }, mason_alias = "typescript-language-server" },
		linter = { enabled = false, tools = { "eslint" } },
		formatter = { enabled = false, tools = { "prettier" } },
	},
	json = {
		lsp = { enabled = true, servers = { "jsonls" } },
		linter = { enabled = true, tools = { "jsonlint" } },
		formatter = { enabled = true, tools = { "prettier" } },
	},
	lua = {
		lsp = { enabled = true, servers = { "lua_ls" } },
		linter = { enabled = true, tools = {} },
		formatter = { enabled = true, tools = { "stylua" } },
	},
	markdown = {
		lsp = { enabled = true, servers = { "marksman" } },
		linter = { enabled = true, tools = { "markdownlint" } },
		formatter = { enabled = true, tools = { "prettier" } },
	},
	perl = {
		lsp = { enabled = false, servers = { "perlnavigator" } },
		linter = { enabled = false, tools = {} },
		formatter = { enabled = false, tools = {} },
	},
	php = {
		lsp = { enabled = false, servers = { "intelephense" } },
		linter = { enabled = false, tools = { "phpcs" } },
		formatter = { enabled = false, tools = { "php-cs-fixer" } },
	},
	python = {
		lsp = { enabled = true, servers = { "pyright" } },
		linter = { enabled = true, tools = { "mypy" } },
		formatter = { enabled = true, tools = { "black", "isort" } },
	},
	ruby = {
		lsp = { enabled = false, servers = { "solargraph" } },
		linter = { enabled = false, tools = { "rubocop" } },
		formatter = { enabled = false, tools = { "rubocop" } },
	},
	rust = {
		lsp = { enabled = false, servers = { "rust_analyzer" } },
		linter = { enabled = false, tools = {} },
		formatter = { enabled = false, tools = { "rustfmt" } },
	},
	sql = {
		lsp = { enabled = true, servers = { "sqlls" } },
		linter = { enabled = true, tools = { "sqlfluff" } },
		formatter = { enabled = true, tools = { "sql_formatter" }, mason_alias = "sql-formatter" },
	},
	typescript = {
		lsp = { enabled = false, servers = { "tsserver" }, mason_alias = "typescript-language-server" },
		linter = { enabled = false, tools = { "eslint" } },
		formatter = { enabled = false, tools = { "prettier" } },
	},
	vim = {
		lsp = { enabled = false, servers = { "vimls" } },
		linter = { enabled = false, tools = {} },
		formatter = { enabled = false, tools = {} },
	},
	yaml = {
		lsp = { enabled = true, servers = { "yamlls" } },
		linter = { enabled = true, tools = { "yamllint" } },
		formatter = { enabled = true, tools = { "prettier" } },
	},
}

return languages
