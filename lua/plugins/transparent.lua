return {
    "xiyaowong/transparent.nvim",
    config = function()
        require('transparent').clear_prefix('neotree')
        require('transparent').clear_prefix('lualine')
        require('transparent').clear_prefix('toggleterm')
        require('transparent').clear_prefix('trouble')
        require('transparent').clear_prefix('lazy')
        require('transparent').clear_prefix('mason')
        require('transparent').clear_prefix('barbar')
    end
}
