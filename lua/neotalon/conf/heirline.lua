local M = {}

function M.setup()
    local utils = require("heirline.utils")

    -- Retrieve colors from the current colorscheme
    local function get_color(group, attr)
        local status, result = pcall(function()
            return vim.api.nvim_get_hl_by_name(group, true)
        end)
        
        if status and result and result[attr] then
            return string.format("#%06x", result[attr])  -- Return color as hex
        else
            return nil  -- If no color is found, return nil
        end
    end

    local fg_color = get_color("Normal", "foreground") or "#cdd6f4"
    local bg_color = get_color("Normal", "background") or "#1e1e2e"

    local colors = {
        normal   = fg_color,
        insert   = get_color("Statement", "foreground") or "#89b4fa",
        visual   = get_color("Visual", "foreground") or "#f38ba8",
        replace  = get_color("Type", "foreground") or "#fab387",
        command  = get_color("Comment", "foreground") or "#f9e2af",
        terminal = get_color("Terminal", "foreground") or "#f5c2e7",
        fg       = fg_color,
        bg       = bg_color,

        git_add     = get_color("GitSignsAdd", "foreground") or "#a6e3a1",
        git_change  = get_color("GitSignsChange", "foreground") or "#94e2d5",
        git_delete  = get_color("GitSignsDelete", "foreground") or "#f38ba8",

        diag_error  = get_color("DiagnosticError", "foreground") or "#f38ba8",
        diag_warn   = get_color("DiagnosticWarn", "foreground") or "#f9e2af",
    }

    -- Vi Mode
    local ViMode = {
        static = {
            mode_names = {
                n = "NORMAL", i = "INSERT", v = "VISUAL",
                V = "V-LINE", ["\22"] = "V-BLOCK", c = "COMMAND",
                R = "REPLACE", t = "TERMINAL",
            },
            mode_colors = {
                n = colors.normal, i = colors.insert, v = colors.visual,
                V = colors.visual, ["\22"] = colors.visual,
                c = colors.command, R = colors.replace, t = colors.terminal,
            },
        },
        init = function(self)
            self.mode = vim.fn.mode(1)
        end,
        provider = function(self)
            return "▊ " .. (self.mode_names[self.mode] or self.mode)
        end,
        hl = function(self)
            local color = self.mode_colors[self.mode:sub(1,1)] or colors.fg
            return { fg = color, bold = true }
        end,
        update = { "ModeChanged" },
    }

    -- File Info
    local FileName = {
        provider = function()
            local name = vim.fn.expand("%:~:.")
            return name ~= "" and name or "[No Name]"
        end,
        hl = { fg = colors.fg, bold = true },
    }

    -- Git Info
    require("gitsigns").setup()
    local Git = {
        condition = function()
            return vim.b.gitsigns_status_dict ~= nil
        end,
        init = function(self)
            self.status = vim.b.gitsigns_status_dict
        end,
        provider = function(self)
            local s = self.status
            return string.format(" %s [A]:%d [M]:%d", s.head, s.added or 0, s.changed or 0)
        end,
        hl = { fg = colors.git_add },
    }

    -- Diagnostics Info
    local Diagnostics = {
        init = function(self)
            local d = vim.diagnostic.get(0)
            self.errors, self.warnings = 0, 0
            for _, diag in ipairs(d) do
                if diag.severity == vim.diagnostic.severity.ERROR then
                    self.errors = self.errors + 1
                elseif diag.severity == vim.diagnostic.severity.WARN then
                    self.warnings = self.warnings + 1
                end
            end
        end,
        provider = function(self)
            local out = {}
            if self.errors > 0 then table.insert(out, " " .. self.errors) end
            if self.warnings > 0 then table.insert(out, " " .. self.warnings) end
            return table.concat(out, " ")
        end,
        hl = { fg = colors.diag_warn },
    }

    -- LSP Info
    local LSP = {
        provider = function()
            local clients = vim.lsp.get_clients({ bufnr = 0 }) 
            if #clients == 0 then return "" end
            local names = {}
            for _, client in ipairs(clients) do
                table.insert(names, client.name)
            end
            return " " .. table.concat(names, ", ")
        end,
        hl = { fg = colors.fg },
    }

    -- Line and Column Info
    local LineColumn = {
        provider = function()
            return string.format("Ln %d | Col %d", vim.fn.line("."), vim.fn.col("."))
        end,
        hl = { fg = colors.fg },
    }

    -- Statusline Setup
    require("heirline").setup({
        statusline = {
            ViMode,
            { provider = " " },
            FileName,
            { provider = " " }, 
            Git,
            { provider = " " },
            Diagnostics,
            { provider = "%=" },
            LSP,
            { provider = " " },
            LineColumn,
            { provider = " " },
        },
    })
end

return M
