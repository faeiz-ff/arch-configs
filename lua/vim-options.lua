vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set rnu")
vim.cmd("set nu")
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.keymap.set("t", "<leader><ESC>", "<C-\\><C-n>", { noremap = true })
vim.keymap.set("n", "<leader>cf", ":Neotree ~/.config/nvim<CR>")

-- vim.diagnostic.config({
-- 	underline = true,
-- 	update_in_insert = true,
-- 	float = true,
-- 	signs = true,
--   -- virtual_text = true,
--   -- virtual_lines = true,
-- })
