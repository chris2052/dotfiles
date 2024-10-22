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
set wrap
set linebreak
set smartcase
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect
set colorcolumn=100
set signcolumn=yes
set cmdheight=2
set updatetime=50
set shortmess+=c
set textwidth=100

" enable syntax-highlighting
syntax enable
" This is necessary for VimTeX to load properly. The 'indent' is optional.
" Note that most plugin managers will do this automatically.
filetype plugin indent on

" This enables Vim's and neovim's syntax-related features. Without this, some
" VimTeX features will not work (see ':help vimtex-requirements' for more
" info).
" syntax enable

" Viewer options: One may configure the viewer either by specifying a built-in
" viewer method:
let g:vimtex_view_method = 'zathura'

" Or with a generic interface:
let g:vimtex_view_general_viewer = 'okular'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'

" VimTeX uses latexmk as the default compiler backend. If you use it, which is
" strongly recommended, you probably don't need to configure anything. If you
" want another compiler backend, you can change it as follows. The list of
" supported backends and further explanation is provided in the documentation,
" see ':help vimtex-compiler'.
" let g:vimtex_compiler_method = 'latexrun'

" Most VimTeX mappings rely on localleader and this can be changed with the
" following line. The default is usually fine and is the symbol '\'.
let maplocalleader = " "

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

vnoremap J 5gh
vnoremap K 5gk

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

" copy to system clipboard
noremap <Leader>y "+y
noremap <Leader>p "+p
noremap <Leader>Y "*y
noremap <Leader>P "*p

" nnoremap <leader>/ :noh
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>

call plug#begin('~/.vim/plugged')
    Plug 'gruvbox-community/gruvbox'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
    Plug 'mg979/vim-visual-multi', {'branch': 'master'}
    Plug 'easymotion/vim-easymotion'
    Plug 'tpope/vim-surround'
    Plug 'lervag/vimtex'
    Plug 'Pocco81/true-zen.nvim'
    Plug 'neovim/nvim-lspconfig'
call plug#end()

" vim Airline settings
let g:airline_powerline_fonts = 1
let g:airline_theme='base16_gruvbox_dark_hard'

" set background dark
colorscheme gruvbox
