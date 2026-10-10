call plug#begin()
Plug 'https://github.com/folke/which-key.nvim'
Plug 'https://github.com/vim-airline/vim-airline' 
Plug 'https://github.com/vim-airline/vim-airline-themes'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/preservim/tagbar'
Plug 'https://github.com/junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'https://github.com/junegunn/fzf.vim'
Plug 'https://github.com/akinsho/toggleterm.nvim'
Plug 'https://github.com/windwp/nvim-autopairs'
Plug 'https://github.com/lewis6991/gitsigns.nvim'
if has('nvim-0.12')
  " Для Neovim 0.12+ используется новая ветка main
  Plug 'https://github.com/nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate', 'branch': 'main' }
else
  " Для Neovim 0.11 и ниже используется замороженная ветка master
  Plug 'https://github.com/nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate', 'branch': 'master' }
endif
Plug 'https://github.com/mason-org/mason.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'https://github.com/mason-org/mason-lspconfig.nvim'
Plug 'https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim'
Plug 'https://github.com/stevearc/conform.nvim'

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" For vsnip users.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

" For luasnip users.
" Plug 'L3MON4D3/LuaSnip'
" Plug 'saadparwaiz1/cmp_luasnip'

" For mini.snippets users.
" Plug 'echasnovski/mini.snippets'
" Plug 'abeldekat/cmp-mini-snippets'

" For ultisnips users.
" Plug 'SirVer/ultisnips'
" Plug 'quangnguyen30192/cmp-nvim-ultisnips'

" For snippy users.
" Plug 'dcampos/nvim-snippy'
" Plug 'dcampos/cmp-snippy'
call plug#end()
