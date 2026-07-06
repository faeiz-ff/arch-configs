local M = {}

function M.setup()
  local hi = vim.api.nvim_set_hl

  -- === Treesitter groups ===

  -- functions
  hi(0, "@function", { italic = true })
  hi(0, "@function.call", { italic = true })
  hi(0, "@method", { italic = true })
  hi(0, "@method.call", { italic = true })

  -- optional: make builtins normal so they stand out
  hi(0, "@function.builtin", {})
  hi(0, "@variable.builtin", {})

  -- === LSP semantic tokens ===

  -- functions
  hi(0, "@lsp.type.function", { italic = true })
  hi(0, "@lsp.type.method", { italic = true })

  -- optional refinements
  hi(0, "@lsp.mod.readonly", { italic = true })
  hi(0, "@lsp.mod.declaration", { italic = true })
end

return M
