local M = {}

function M.setup()
  local hi = vim.api.nvim_set_hl

  local COLOR = "#c9c9c9"

  -- === Core diagnostic groups ===
  hi(0, "DiagnosticError", { fg = COLOR, bold = true })
  hi(0, "DiagnosticWarn",  { fg = COLOR, italic = true })
  hi(0, "DiagnosticInfo",  { fg = COLOR })
  hi(0, "DiagnosticHint",  { fg = COLOR, underline = true })

  -- === Underlines (main signal without color) ===
  hi(0, "DiagnosticUnderlineError", { underline = true })
  hi(0, "DiagnosticUnderlineWarn",  { undercurl = true })
  hi(0, "DiagnosticUnderlineInfo",  { underline = true })
  hi(0, "DiagnosticUnderlineHint",  { underline = true })

  -- === Virtual text (inline messages) ===
  hi(0, "DiagnosticVirtualTextError", { italic = true })
  hi(0, "DiagnosticVirtualTextWarn",  { italic = true })
  hi(0, "DiagnosticVirtualTextInfo",  { italic = true })
  hi(0, "DiagnosticVirtualTextHint",  { italic = true })

  -- === Signs (gutter) ===
  hi(0, "DiagnosticSignError", { bold = true })
  hi(0, "DiagnosticSignWarn",  { italic = true })
  hi(0, "DiagnosticSignInfo",  {})
  hi(0, "DiagnosticSignHint",  { underline = true })

  -- === Diagnostic config ===
  vim.diagnostic.config({
    virtual_text = false,
    underline = true,
    signs = {
      text = {
        [vim.diagnostic.severity.ERROR] = "E",
        [vim.diagnostic.severity.WARN]  = "W",
        [vim.diagnostic.severity.INFO]  = "I",
        [vim.diagnostic.severity.HINT]  = "H",
      },
    },
    update_in_insert = false,
    severity_sort = true,
  })
end

return M
