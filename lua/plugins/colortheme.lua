return {

	-- Monosplash
	"mcombeau/monosplash.vim",
	config = function()
	    vim.cmd([[let g:monosplash_color = 'red']])
		vim.cmd([[colorscheme monosplash]])
        vim.cmd('hi Comment guifg=#ff4444')
        vim.cmd('hi Type guifg=#ff6666')
	end,

  -- mfd
  --     'kungfusheep/mfd.nvim',
  --     lazy = false,
  --     priority = 1000,
  --     config = function()
  --         vim.cmd('colorscheme mfd-stealth')
  --         vim.cmd('hi Comment guifg=#ff4444')
  --
  --         -- vim.opt.guicursor = {
  --         --     "n:block-CursorNormal",
  --         --     "v:block-CursorVisual",
  --         --     "i:block-CursorInsert",
  --         --     "r-cr:block-CursorReplace",
  --         --     "c:block-CursorCommand",
  --         -- }
  --         --
  --         -- require('mfd').enable_cursor_sync()
  -- end,

    -- Lackluster
    -- "slugbyte/lackluster.nvim",
    -- lazy = false,
    -- priority = 1000,
    -- init = function()
    --     -- vim.cmd.colorscheme("lackluster")
    --     -- vim.cmd.colorscheme("lackluster-hack") -- my favorite
    --     vim.cmd.colorscheme("lackluster-mint")
    -- end,

    -- Kalahari
    -- "fabi1cazenave/kalahari.vim",
    -- config = function()
    --     vim.cmd([[set background=dark]])
    --     vim.cmd([[colorscheme kalahari]])
    -- end

    -- Hyper
    -- 'paulo-granthon/hyper.nvim',
    -- config = function()
    --   require('hyper').load()
    -- end

	-- Noctishc
	-- "iagorrr/noctishc.nvim",
	--    config = function()
	--        require("lazy").setup("")
	--    end
    

    --	Modus
	-- "miikanissi/modus-themes.nvim",
	-- priority = 1000,
	--    config = function()
	--        vim.cmd.colorscheme "modus"
	--    end

	-- Moonfly
	-- "bluz71/vim-moonfly-colors",
	-- name = "moonfly",
	-- lazy = false,
	-- priority = 1000,
	-- config = function()
	-- 	vim.cmd([[colorscheme moonfly]])
	-- end,

	-- OneDark
	-- "navarasu/onedark.nvim",
	-- priority = 1000,
	-- config = function()
	--  equire('onedark').setup { style = 'darker'}
	--  require('onedark').load()
	--  vim.cmd.colorscheme "onedark dark"
	-- end

	-- OxoCarbon
	-- "nyoom-engineering/oxocarbon.nvim",
}
