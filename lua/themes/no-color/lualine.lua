local M = {}

local base = { fg = "#c9c9c9", bg = "NONE" }

local function style(extra)
  return vim.tbl_extend("force", base, extra or {})
end

M.normal = {
  a = style({ bold = true }),
  b = style(),
  c = style(),
}

M.insert = {
  a = style({ bold = true }),
  b = style(),
  c = style(),
}

M.visual = {
  a = style({ bold = true, italic = true }),
  b = style(),
  c = style(),
}

M.replace = {
  a = style({ bold = true }),
  b = style(),
  c = style(),
}

M.command = {
  a = style({ bold = true }),
  b = style(),
  c = style(),
}

M.inactive = {
  a = style({ italic = true }),
  b = style(),
  c = style(),
}

return M
