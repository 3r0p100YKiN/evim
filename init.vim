:set mouse=a
:set hidden
:set signcolumn=yes
:set relativenumber number
:set smarttab
:set tabstop=4
:set shiftwidth=4
:set softtabstop=4
:set autoindent
:set clipboard=unnamedplus
let g:mapleader = " "

" sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
"       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
" sudo apt-get install git curl gcc make unzip nodejs npm python3-module-pip ripgrep fd fzf universal-ctags wl-clipboard xclip 

execute 'source' fnamemodify(stdpath('config') . '/plugins.vim', ':p')

let g:airline_theme = 'luna'

lua require("keymap-config")
lua require("autopairs-config")
lua require("toggleterm-config")
lua require("toggleterm").setup()
lua require("treesitter-config")
lua require("mason").setup()
lua require("mason-lspconfig-config")
lua require("mason-tool-installer-config")
lua require("cmp-config")

