-- Collection of functions for NeoTalon

-- Print debug messages if DEBUG is true
function debug_print(msg)
	if DEBUG then
		vim.notify(msg, vim.log.levels.DEBUG)
	end
end

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
function run_config(filename)
	local conf_file = "neotalon.conf." .. filename
	local conf_path = vim.fn.stdpath("config") .. "/lua/" .. conf_file:gsub("%.", "/") .. ".lua"
	if file_exists(conf_path) then
		local status, conf = pcall(require, conf_file)
		if status then
			if type(conf) == "table" and conf.setup then
				conf.setup()
			end
		else
			vim.notify("Error loading configuration for " .. filename .. ": " .. conf, vim.log.levels.ERROR)
		end
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
