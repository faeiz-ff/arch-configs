local M = {}

function M.setup()
  local hi = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  local base = { fg = "#c9c9c9", bg = "NONE" }

  local function style(extra)
    return vim.tbl_extend("force", base, extra or {})
  end

  -- main
  hi("NeoTreeNormal", style())
  hi("NeoTreeNormalNC", style())

  -- files
  hi("NeoTreeFileName", style())
  hi("NeoTreeFileNameOpened", style({ italic = true }))

  -- directories
  hi("NeoTreeDirectoryName", style({ bold = true }))
  hi("NeoTreeDirectoryIcon", style({ bold = true }))

  -- Git status (correct groups)
  hi("NeoTreeGitAdded", style({ bold = true }))
  hi("NeoTreeGitModified", style({ italic = true }))
  hi("NeoTreeGitDeleted", style({ bold = true }))

  hi("NeoTreeGitUntracked", style({ italic = true }))
  hi("NeoTreeGitIgnored", style({ italic = true }))
  hi("NeoTreeGitStaged", style({ bold = true }))
  hi("NeoTreeGitConflict", style({ bold = true }))

  hi("NeoTreeGitAddedSign", style({ bold = true }))
  hi("NeoTreeGitModifiedSign", style({ italic = true }))
  hi("NeoTreeGitDeletedSign", style({ bold = true }))

  -- cursor / selection
  hi("NeoTreeCursorLine", style({ reverse = true }))
  hi("NeoTreeIndentMarker", style())

  -- root
  hi("NeoTreeRootName", style({ bold = true, underline = true }))
end

return M
