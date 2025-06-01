-- NeoTalon Configuration Variables
CONFIG_NAME = "NeoTalon"
CONFIG_VER = "0.0.2"

-- Set your preferred colorscheme here
COLOR_SCHEME = "tokyonight"
FALLBACK_COLOR_SCHEME = "industry"

-- Set your tab settings
EXPAND_TAB = true
TAB_SIZE = 2

-- Set your indentation and max line length guide
AUTO_INDENT = false
COLOR_COLUMN = 80
CURSOR_LINE = false

-- Set your line numbers and relative line numbers
RELATIVE_NUMBERS = true
LINE_NUMBERS = true

-- Enable/Disable the mouse
ENABLE_MOUSE = false

-- Debug message output
DEBUG = true

-- Whether to automatically install missing parsers
-- If set to true, it will override the parser.enabled setting
--in the LANGUAGES table below

TREESITTER_AUTO_INSTALL = true

-- Set Treesitter, Mason and Ale settings for each language
LANGUAGES = {
	bash = {
		TAB_SIZE = 2,
		COLOR_COLUMN = 80,
		parser = {
			enabled = false,
		},
		lsp = {
			enabled = true,
			server = { "bash-language-server" },
		},
		ale = {
			enabled = true,
			ale_mason_linters = { "shellcheck" },
			ale_mason_fixers = { "shfmt" },
			ale_ext_linters = {},
			ale_ext_fixers = {},
		},
		debugger = {
			enabled = false,
			name = { "bash-debug-adapter" },
		},
	},
	c = {
		parser = {
			enabled = true,
		},
		lsp = {
			enabled = true,
			server = { "clangd" },
		},
		ale = {
			enabled = true,
			ale_mason_linters = { "clangd" },
			ale_mason_fixers = { "clang-format" },
			ale_ext_linters = {},
			ale_ext_fixers = {},
		},
	},
	cpp = {
		parser = {
			enabled = false,
		},
		lsp = {
			enabled = false,
			server = { "clangd" },
		},
		ale = {
			enabled = false,
			ale_mason_linters = { "clangd" },
			ale_mason_fixers = { "clang-format" },
			ale_ext_linters = {},
			ale_ext_fixers = {},
		},
	},
	css = {
		parser = {
			enabled = false,
		},
		lsp = {
			enabled = false,
			server = { "cssls" },
		},
		COLOR_COLUMN = 120,
		ale = {
			enabled = false,
			ale_mason_linters = { "stylelint" },
			ale_mason_fixers = { "stylelint" },
			ale_ext_linters = {},
			ale_ext_fixers = {},
		},
	},
	dart = {
		parser = {
			enabled = false,
		},
		lsp = {
			enabled = false,
			server = { "ast-grep" },
		},
		ale = {
			enabled = false,
			ale_mason_linters = {},
			ale_ext_linters = {},
			ale_ext_fixers = {},
		},
	},
	dockerfile = {
		parser = {
			enabled = true,
		},
		lsp = {
			enabled = true,
			server = { "dockerls" },
		},
		ale = {
			enabled = true,
			ale_mason_linters = { "hadolint" },
			ale_mason_fixers = { "dprint" },
			ale_ext_linters = {},
			ale_ext_fixers = {},
		},
	},
	go = {
		parser = {
			enabled = false,
		},
		lsp = {
			enabled = false,
			server = { "ast-grep" },
		},
		ale = {
			enabled = false,
			ale_mason_linters = { "golangci-lint" },
			ale_mason_fixers = { "gofumpt" },
			ale_ext_linters = {},
			ale_ext_fixers = {},
		},
	},
	html = {
		parser = {
			enabled = true,
		},
		lsp = {
			enabled = true,
			server = { "ast-grep" },
		},
		ale = {
			enabled = true,
			ale_mason_linters = { "htmlhint" },
			ale_mason_fixers = { "prettier" },
			ale_ext_linters = {},
			ale_ext_fixers = {},
		},
	},
	java = {
		COLOR_COLUMN = 120,
		TAB_SIZE = 2,
		parser = {
			enabled = false,
		},
		lsp = {
			enabled = false,
			server = { "jdtls" },
		},
		ale = {
			enabled = false,
			ale_mason_linters = { "checkstyle" },
			ale_mason_fixers = { "clang-format" },
			ale_ext_linters = {},
			ale_ext_fixers = {},
		},
		debugger = {
			enabled = false,
			name = { "java-debug-adapter" },
		},
	},
	javascript = {
		parser = {
			enabled = false,
		},
		lsp = {
			enabled = false,
			server = { "deno", "typescript-language-server" },
		},
		ale = {
			enabled = false,
			ale_mason_linters = { "biome" },
			ale_mason_fixers = { "biome" },
			ale_ext_linters = {},
			ale_ext_fixers = {},
		},
		debugger = {
			enabled = false,
			name = { "js-debug-adapter" },
		},
	},
	json = {
		parser = {
			enabled = false,
		},
		lsp = {
			enabled = false,
			server = { "jsonls" },
		},
		ale = {
			enabled = false,
			ale_mason_linters = { "jsonlint" },
			ale_mason_fixers = { "jq" },
			ale_ext_linters = {},
			ale_ext_fixers = {},
		},
	},
	kotlin = {
		parser = {
			enabled = false,
		},
		lsp = {
			enabled = false,
			server = { "kotlin_language_server" },
		},
		ale = {
			enabled = false,
			ale_mason_linters = { "ktlint" },
			ale_ext_linters = {},
			ale_ext_fixers = {},
		},
	},
	-- Keep this enabled
	lua = {
		parser = {
			enabled = true,
		},
		lsp = {
			enabled = true,
			server = { "lua_ls" },
		},
		ale = {
			enabled = true,
			ale_mason_linters = { "selene" },
			ale_mason_fixers = { "stylua" },
			ale_ext_linters = {},
			ale_ext_fixers = {},
		},
		debugger = {
			enabled = true,
			name = { "local-lua-debugger-vscode" },
		},
	},
	markdown = {
		parser = {
			enabled = true,
		},
		lsp = {
			enabled = true,
			server = { "marksman" },
		},
		ale = {
			enabled = true,
			ale_mason_linters = { "markdownlint" },
			ale_mason_fixers = { "prettier" },
			ale_ext_linters = {},
			ale_ext_fixers = {},
		},
	},
	php = {
		parser = {
			enabled = false,
		},
		lsp = {
			enabled = false,
			server = { "intelephense" },
		},
		ale = {
			enabled = false,
			ale_mason_linters = { "phpcs" },
			ale_mason_fixers = { "php-cs-fixer" },
			ale_ext_linters = {},
			ale_ext_fixers = {},
		},
		debugger = {
			enabled = false,
			name = { "php-debug-adapter" },
		},
	},
	python = {
		TAB_SIZE = 4,
		parser = {
			enabled = true,
		},
		lsp = {
			enabled = true,
			server = { "pyright", "ruff" },
		},
		ale = {
			enabled = true,
			ale_mason_linters = { "pylint", "mypy" },
			ale_mason_fixers = { "black", "isort", "autopep8" },
			ale_ext_linters = {},
			ale_ext_fixers = {},
		},
		debugger = {
			enabled = false,
			name = { "python" },
		},
	},
	ruby = {
		parser = {
			enabled = false,
		},
		lsp = {
			enabled = false,
			server = { "ruby-lsp" },
		},
		ale = {
			enabled = false,
			ale_mason_linters = { "rubocop" },
			ale_mason_fixers = { "rubocop" },
			ale_ext_linters = {},
			ale_ext_fixers = {},
		},
	},
	-- Simply cannot get Rust and Neovim to play nice together
	-- so disabling for now
	rust = {
		parser = {
			enabled = false,
		},
		lsp = {
			enabled = false,
			server = { "rust_analyzer" },
		},
		ale = {
			enabled = false,
			ale_mason_linters = { "snyk" },
			ale_mason_fixers = {},
			ale_ext_linters = { "analyzer", "cargo" },
			ale_ext_fixers = { "rustfmt" },
		},
	},
	sql = {
		parser = {
			enabled = true,
		},
		lsp = {
			enabled = true,
			server = { "sqlls" },
		},
		ale = {
			enabled = true,
			ale_mason_linters = { "sqlfluff" },
			ale_mason_fixers = { "sqlfmt" },
			ale_ext_linters = {},
			ale_ext_fixers = {},
		},
	},
	swift = {
		lsp = {
			enabled = false,
		},
		ale = {
			enabled = false,
			ale_mason_linters = { "swiftlint" },
			ale_mason_fixers = { "swiftformat" },
			ale_ext_linters = {},
			ale_ext_fixers = {},
		},
	},
	toml = {
		parser = {
			enabled = false,
		},
		lsp = {
			enabled = false,
			server = { "taplo" },
		},
		ale = {
			enabled = false,
			ale_mason_linters = { "taplo" },
			ale_ext_linters = {},
			ale_ext_fixers = {},
		},
	},
	typescript = {
		parser = {
			enabled = false,
		},
		lsp = {
			enabled = false,
			server = { "ts_ls" },
		},
		ale = {
			enabled = false,
			ale_mason_linters = { "eslint" },
			ale_mason_fixers = { "prettier" },
			ale_ext_linters = {},
			ale_ext_fixers = {},
		},
		debugger = {
			enabled = false,
			name = { "js-debug-adapter" },
		},
	},
	vim = {
		parser = {
			enabled = false,
		},
		lsp = {
			enabled = false,
			server = { "vimls" },
		},
		ale = {
			enabled = false,
			ale_mason_linters = { "vint" },
			ale_mason_fixers = {},
			ale_ext_linters = {},
			ale_ext_fixers = {},
		},
	},
	yaml = {
		parser = {
			enabled = false,
		},
		lsp = {
			enabled = false,
			server = { "yamlls" },
		},
		ale = {
			enabled = false,
			ale_mason_linters = { "yamllint" },
			ale_mason_fixers = { "prettier" },
			ale_ext_linters = {},
			ale_ext_fixers = {},
		},
	},
}

parser_list = {}
lsp_list = {}
debugger_list = {}
ale_mason_linter_list = {}
ale_mason_fixer_list = {}
ale_ext_linter_list = {}
ale_ext_fixer_list = {}
ale_linter_dict = {}
ale_fixer_dict = {}

-- Function to combine two tables
function TableConcat(t1, t2)
	for i = 1, #t2 do
		t1[#t1 + 1] = t2[i]
	end
	return t1
end
-- Replace the global TableConcat with the local function
_G.TableConcat = TableConcat

for lang, lang_config in pairs(LANGUAGES) do
	-- Add enabled parsers to the parser_list for Treesitter
	if lang_config.parser and lang_config.parser.enabled then
		table.insert(parser_list, lang)
	end

	-- Add enabled debuggers to the debugger_list for mason-nvim-dap
	if lang_config.debugger and lang_config.debugger.enabled then
		for _, debugger in ipairs(lang_config.debugger.name) do
			table.insert(debugger_list, debugger)
		end
	end

	-- Add enabled LSP servers to the lsp_list for mason-lspconfig
	if lang_config.lsp.enabled and lang_config.lsp.server then
		for _, server in ipairs(lang_config.lsp.server) do
			table.insert(lsp_list, server)
		end
	end

	-- Variables for ALE Linters and Fixers
	if lang_config.ale and lang_config.ale.enabled then
		-- ALE linters available in mason
		if lang_config.ale.ale_mason_linters then
			for _, linter in ipairs(lang_config.ale.ale_mason_linters) do
				table.insert(ale_mason_linter_list, linter)
			end
		end
		-- ALE fixers available in mason
		if lang_config.ale.ale_mason_fixers then
			for _, fixer in ipairs(lang_config.ale.ale_mason_fixers) do
				table.insert(ale_mason_fixer_list, fixer)
			end
		end
	end

	if lang_config.ale and lang_config.ale.enabled then
		-- External linters for ALE
		if lang_config.ale.ale_ext_linters then
			for _, linter in ipairs(lang_config.ale.ale_ext_linters) do
				table.insert(ale_ext_linter_list, linter)
			end
		end
		-- External fixers for ALE
		if lang_config.ale.ale_ext_fixers then
			for _, fixer in ipairs(lang_config.ale.ale_ext_fixers) do
				table.insert(ale_ext_fixer_list, fixer)
			end
		end
	end

	-- Build the ALE dictionaries and lists for linters and fixers
	-- The dictionaries are required by ALE, and the lists
	-- Mason-Tool-Installer
	if lang == "bash" then
		lang = "sh"
	end
	if lang_config.ale.enabled then
		full_linter_list = {}
		full_fixer_list = {}
		if lang_config.ale.ale_mason_linters then
			full_linter_list = lang_config.ale.ale_mason_linters
		end
		if lang_config.ale.ale_ext_linters then
			full_linter_list = TableConcat(full_linter_list, lang_config.ale.ale_ext_linters or {})
		end
		ale_linter_dict[lang] = full_linter_list

		full_fixer_list = {}
		if lang_config.ale.ale_mason_fixers then
			full_fixer_list = lang_config.ale.ale_mason_fixers
		end
		if lang_config.ale.ale_ext_fixers then
			full_fixer_list = TableConcat(full_fixer_list, lang_config.ale.ale_ext_fixers or {})
		end
		ale_fixer_dict[lang] = full_fixer_list
	end
end

-- Exclude LSP servers not supported by nvim-cmp
cmp_lsp_exclusion_list = {
	"bash-language-server",
	"ast-grep",
	"deno",
	"typescript-language-server",
	"ts_ls",
	"jdtls",
	"kotlin_language_server",
	"ruby-lsp",
}

-- Snacks Modules
SNACK_PLUGINS = {
	animate = { enabled = true },
	bigfile = { enabled = true },
	bufdelete = { enabled = false },
	dashboard = { enabled = true },
	debug = { enabled = true },
	dim = { enabled = true },
	explorer = { enabled = false },
	git = { enabled = false },
	gitbrowse = { enabled = false },
	image = { enabled = false },
	indent = { enabled = false },
	input = { enabled = false },
	layout = { enabled = false },
	lazygit = { enabled = true },
	notifier = { enabled = false, timeout = 3000 },
	notify = { enabled = false },
	picker = { enabled = false },
	profiler = { enabled = false },
	quickfile = { enabled = false },
	rename = { enabled = false },
	scope = { enabled = false },
	scratch = { enabled = false },
	scroll = { enabled = false },
	statuscolumn = { enabled = false },
	terminal = { enabled = false },
	toggle = { enabled = false },
	util = { enabled = false },
	win = { enabled = false },
	words = { enabled = false },
	zen = { enabled = true },
}

-- Set icons for diagnostics
error_icon = ""
warning_icon = ""
info_icon = ""
hint_icon = ""
