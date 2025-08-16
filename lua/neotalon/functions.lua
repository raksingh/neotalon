-- Commonly used functions in Neotalon

local languages = require("neotalon.vars.languages")

-- Check if a file exists and returns true or false
local function file_exists(name)
	local f = io.open(name, "r")
	if f ~= nil then
		io.close(f)
		return true
	else
		return false
	end
end

-- Executes the setup in the given filename (without the extension)
-- if it exists in the ./conf directory
-- Note that Lazy prefers opts to config
-- Eg.
--   opts = function()
--       run_config("mason")
--   end
_G.run_config = function(filename)
	local conf_file = "neotalon.conf." .. filename
	local conf_path = vim.fn.stdpath("config") .. "/lua/" .. conf_file:gsub("%.", "/") .. ".lua"
	if file_exists(conf_path) then
		local status, conf = pcall(require, conf_file)
		if status then
			if type(conf) == "table" and conf.setup then
				conf.setup()
			end
		else
			vim.notify("Error loading configuration for '" .. filename .. "': " .. conf, vim.log.levels.ERROR)
		end
	end
	set_keymap(filename)
end

-- Sets the keymaps using the which-key definitions in the keymaps directory
_G.set_keymap = function(filename)
	local keymap_file = "neotalon.keymaps." .. filename
	local keymap_path = vim.fn.stdpath("config") .. "/lua/" .. keymap_file:gsub("%.", "/") .. ".lua"
	if file_exists(keymap_path) then
		require(keymap_file)
	end
end
-- Combine multiple lists into one
function merge_lists(...)
	local merged = {}
	for i = 1, select("#", ...) do
		local list = select(i, ...)
		for _, v in ipairs(list) do
			table.insert(merged, v)
		end
	end
	return merged
end

-- Check if a value exists in a table
function table_contains(table, value)
	for _, v in ipairs(table) do
		if v == value then
			return true
		end
	end
	return false
end

-- Function to combine two tables
function TableConcat(t1, t2)
	for i = 1, #t2 do
		t1[#t1 + 1] = t2[i]
	end
	return t1
end

_G.TableConcat = TableConcat
-- Returns a list of LSP servers that are enabled
function get_lsp_servers()
	local lsp_list = {}
	for lang, config in pairs(languages) do
		if config.lsp and config.lsp.enabled then
			for _, server in ipairs(config.lsp.servers) do
				if config.lsp.mason_alias then
					server = config.lsp.mason_alias
				end
				table.insert(lsp_list, server)
			end
		end
	end
	return lsp_list
end

-- Returns a dictionary of Linters that are enabled
function get_linters(only_tools)
	local linter_list = {}
	for lang, config in pairs(languages) do
		if config.linter and config.linter.enabled then
			linter_list[lang] = config.linter.tools or {}
		end
	end
	return linter_list
end

-- Returns a dictionary of formatters that are enabled
function get_formatters()
	local formatter_list = {}
	for lang, config in pairs(languages) do
		if config.formatter and config.formatter.enabled then
			formatter_list[lang] = config.formatter.tools or {}
		end
	end
	return formatter_list
end

-- Returns only a list containing linters that are enabled
function get_linter_tools()
	local linter_list = {}
	for lang, config in pairs(languages) do
		if config.linter and config.linter.enabled then
			for _, tool in ipairs(config.linter.tools) do
				if not table_contains(linter_list, tool) then
					table.insert(linter_list, tool)
				end
			end
		end
	end
	return linter_list
end

-- Returns a list of formatters that are enabled
function get_formatter_tools()
	local formatter_list = {}
	for lang, config in pairs(languages) do
		if config.formatter and config.formatter.enabled then
			for _, tool in ipairs(config.formatter.tools) do
				if not table_contains(formatter_list, tool) then
					if config.formatter.mason_alias then
						tool = config.formatter.mason_alias
					end
					table.insert(formatter_list, tool)
				end
			end
		end
	end
	return formatter_list
end

-- Returns a list of all languages with linters enabled
function get_all_languages()
	local lang_list = {}
	for lang, config in pairs(languages) do
		if config.linter and config.linter.enabled then
			table.insert(lang_list, lang)
		end
	end
	return lang_list
end
