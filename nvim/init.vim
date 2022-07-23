 " >> load plugins
call plug#begin(stdpath('data') . 'vimplug')
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'neovim/nvim-lspconfig'
    Plug 'junegunn/fzf.vim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
 "   Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }
    Plug 'sheerun/vim-polyglot'
    Plug 'flazz/vim-colorschemes'
    Plug 'felixhummel/setcolors.vim'
    Plug 'morhetz/gruvbox'
    Plug 'NLKNguyen/papercolor-theme'
    Plug 'ojroques/vim-oscyank', {'branch': 'main'}
    Plug 'jiangmiao/auto-pairs'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-repeat'

"debugging
"    Plug 'mfussenegger/nvim-dap'
"    Plug 'yriveiro/dap-go.nvim'
"    Plug 'rcarriga/nvim-dap-ui'
"    Plug 'theHamsta/nvim-dap-virtual-text'
"    Plug 'nvim-telescope/telescope-dap.nvim'
"
call plug#end()


"colorscheme papercolor
colorscheme gruvbox 
hi Normal ctermbg=NONE guibg=NONE

" remapping gp and gd to switch buffers
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>  

" basic settings
syntax on
set guifont=ProggyCleanTT\ 12
set number
set relativenumber
set ignorecase      " ignore case
set smartcase     " but don't ignore it, when search string contains uppercase letters 
set hidden      " makes vim work like every other multiple file editor
set switchbuf=usetab,newtab     "switching to existing tab if buffer is open, or creating new if not
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
set wildchar=<Tab> wildmenu wildmode=full
set nohlsearch

        
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <silent> <C-f> :Files<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>

"filetree mapping cp from Primeagen
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
"Open a new split for the program running
nnoremap <leader>r :vsplit term://python3 %<cr>
"move throught colorshcemes 
noremap <silent> <leader>nc :call NextColor(0)<CR>
vnoremap <leader>c :OSCYank<CR>

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif
"EOF
