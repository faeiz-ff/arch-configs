return {
  {
    "mason-org/mason.nvim",
    opts = {}
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      automatic_enable = {
          exclude = {
              'jdtls'
          }
      },
      ensure_installed = {
      'lua_ls',
      'rust_analyzer',
      'clangd',
      'gopls',
      'ts_ls',
      'tailwindcss',
      'html',
      'cssls',
      'jdtls',
    },
  },
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
