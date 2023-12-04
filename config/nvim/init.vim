" vim-plug https://github.com/junegunn/vim-plug
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', {'branch': '0.1.x'}
Plug 'folke/which-key.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
Plug 'mbbill/undotree'
Plug 'folke/tokyonight.nvim'

Plug 'ThePrimeagen/harpoon'

Plug 'tpope/vim-fugitive'

" LSP Server Mangers
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'

" LSP Support
Plug 'neovim/nvim-lspconfig'
" AutoCompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'

Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v3.x'}

Plug 'folke/which-key.nvim', { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'AckslD/nvim-whichkey-setup.lua'
 
Plug 'dhananjaylatkar/cscope_maps.nvim'

call plug#end()

lua require("plaidcat")
lua require("whichkey")
" lua require("whichkey_setup").config{hide_statusline = false, default_keymap_settings = {silent = true,noremap = true,}, default_mode = 'n',}
lua require("cscope_maps").setup({ disable_maps = false, skip_input_prompt = false, prefix = "<leader>c", cscope = {db_file = "./cscope.out", exec = "cscope", picker = "telescope", qf_window_size = 5, qf_window_pos = "bottom", skip_picker_for_single_result = false, db_build_cmd_args = { "-bqkv" }, statusline_indicator = nil,}})
