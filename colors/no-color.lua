-- clear existing highlights
vim.cmd("hi clear")

if vim.fn.exists("syntax_on") == 1 then
  vim.cmd("syntax reset")
end

vim.g.colors_name = "no-color"

local base = { fg = "#c9c9c9", bg = "NONE" }

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, vim.tbl_extend("force", base, opts or {}))
end
--
-- vim.api.nvim_set_hl(0, "Comment", vim.tbl_extend("force",  { fg = "#555555", bg = "#c9c9c9" }, opts or {}))
-- vim.api.nvim_set_hl(0, "Special", vim.tbl_extend("force",  { fg = "#555555", bg = "#c9c9c9" }, opts or {}))

-- core groups
hi("Normal")
hi("Comment")
hi("Special")
hi("NonText")
hi("Ignore")
hi("PreProc")
hi("Title")
hi("LineNr")
hi("CursorLine")
hi("CursorLineNr")
hi("VertSplit")
hi("FoldColumn")
hi("Folded")
hi("WildMenu")
hi("SpecialKey")
hi("DiffAdd")
hi("DiffChange")
hi("DiffDelete")
hi("DiffText")
hi("ColorColumn")
hi("SignColumn")
hi("Cursor")
hi("CursorColumn")
hi("QuickFixLine")
hi("Conceal")
hi("ToolbarLine")
hi("ToolbarButton")
hi("debugPC")
hi("debugBreakpoint")
hi("Statement")

-- styled groups
hi("Constant", { bold = true })
hi("Type", { bold = true })
hi("Directory", { bold = true })

hi("Error", { reverse = true })
hi("Todo", { reverse = true })
hi("MatchParen", { reverse = true })

hi("Visual", { reverse = true, bold = true })

hi("Underlined", { underline = true })

hi("String", { italic = true })
hi("Function", { italic = true })
hi("Identifier", { italic = true })

hi("StatusLine", { reverse = true })
hi("StatusLineNC", { underline = true })
hi("StatusLineTerm", { reverse = true })
hi("StatusLineTermNC", { underline = true })

hi("TabLine", { underline = true })
hi("TabLineFill", { underline = true })
hi("TabLineSel", { reverse = true })

hi("IncSearch", { bg = "NONE" })
hi("Search", { bg = "NONE" })

hi("Pmenu")
hi("PmenuSbar")
hi("PmenuSel")
hi("PmenuThumb")

hi("SpellBad")
hi("SpellCap")
hi("SpellLocal")
hi("SpellRare")

hi("ModeMsg", { fg = "white" })
hi("MoreMsg", { fg = "white" })
hi("Question", { fg = "white" })
hi("WarningMsg", { fg = "white" })


-- links
vim.api.nvim_set_hl(0, "EndOfBuffer", { link = "NonText" })
vim.api.nvim_set_hl(0, "Number", { link = "Constant" })
vim.api.nvim_set_hl(0, "ErrorMsg", { link = "Error" })
vim.api.nvim_set_hl(0, "CursorIM", { link = "Cursor" })
vim.api.nvim_set_hl(0, "Terminal", { link = "Normal" })

-- terminal colors (minimal, expand if needed)
vim.g.terminal_ansi_colors = {
  "#ffffff",
}

-- fillchars
vim.opt.fillchars:append({ vert = "│" })
