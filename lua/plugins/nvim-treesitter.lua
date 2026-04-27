return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  lazy = false,
  config = function()
    require'nvim-treesitter'.setup {
      install_dir = vim.fn.stdpath('data') .. '/site',
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    }
    vim.api.nvim_create_autocmd('FileType', {
      pattern = { '<filetype>' },
      callback = function() vim.treesitter.start() end,
    })
  end
}

