" >> load plugins
call plug#begin(stdpath('data') . 'vimplug')
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'neovim/nvim-lspconfig'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

    Plug 'morhetz/gruvbox'
    Plug 'ojroques/vim-oscyank', {'branch': 'main'}

"debugging
"    Plug 'mfussenegger/nvim-dap'
"    Plug 'yriveiro/dap-go.nvim'
"    Plug 'rcarriga/nvim-dap-ui'
"    Plug 'theHamsta/nvim-dap-virtual-text'
"    Plug 'nvim-telescope/telescope-dap.nvim'
"
call plug#end()


"colorscheme PaperColor
colorscheme gruvbox

" basic settings
syntax on
set guifont=ProggyCleanTT\ 12
set number
set relativenumber
set ignorecase      " ignore case
set smartcase     " but don't ignore it, when search string contains uppercase letters
set nocompatible
set incsearch        " do incremental searching
set visualbell
set expandtab
set tabstop=4
set ruler
set smartindent
set shiftwidth=4
set hlsearch
set virtualedit=all
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set autoindent
"set mouse=a  " mouse support
"searches the current directory and recursivly thereafter
set path=.,,** 

 "split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"filetree mapping cp from Primeagen
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
"Open a new split for the program running
nnoremap <leader>r :vsplit term://python3 %<cr>

vnoremap <leader>c :OSCYank<CR>

"EOF
