set exrc
set guicursor=
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect
set colorcolumn=80
set signcolumn=yes
set cmdheight=2
set updatetime=50
set shortmess+=c

" enable syntax-highlighting
syntax on

" <leader> to <space>
let mapleader = "\<Space>"

" set <Esc> key, NO nonblank char after!
inoremap jk <Esc>

" === mappings like VSCode ===
" faster scrolling on standard keys 
nnoremap J 5gj 
nnoremap K 5gk

nnoremap L $
nnoremap H ^

nnoremap <leader>j J
nnoremap <leader>k K

" splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

" tabs
nnoremap <leader>tn :tabnew<CR>
nnoremap <leader>tt :tabnext<CR>
nnoremap <leader>tp :tabprev<CR>

nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt

" nnoremap <leader>/ :noh
nnoremap <leader>q :wq<CR>

call plug#begin('~/.vim/plugged')
    Plug 'gruvbox-community/gruvbox'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
    Plug 'mg979/vim-visual-multi', {'branch': 'master'}
    Plug 'easymotion/vim-easymotion'
    Plug 'tpope/vim-surround'
call plug#end()

" vim Airline settings
let g:airline_powerline_fonts = 1
let g:airline_theme='base16_gruvbox_dark_hard'

" set background dark
colorscheme gruvbox
