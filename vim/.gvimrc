" Sample .gvimrc configuration with a dark theme

" Ensure Vim is not in compatible mode
set nocompatible

" Enable syntax highlighting
syntax on

" Set the default encoding to UTF-8
set encoding=utf-8

" Enable line numbers
set number

" Set dark theme
" You can replace 'darkblue' with other dark themes like 'desert', 'elflord', etc.
colorscheme koehler

" Set font for GVim (adjust the font as per your preference)
set guifont=Monospace\ 10

" Highlight current line
set cursorline

" Set tab and indent settings
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent

" Enable mouse support
set mouse=a

" Set the GUI window title
set title

" Show status line always
set laststatus=2

" Enable visual bell instead of an audible one
set visualbell

" Set the command line height
set cmdheight=1

" Disable toolbar
" set guioptions-=T

" Disable menu bar
" set guioptions-=m

" Disable scrollbars
set guioptions-=L
set guioptions-=R
set guioptions-=F

" More settings can be added here as per your preference
" Map Ctrl+C to copy in visual mode
vmap <C-C> "+y

" Map Ctrl+V to paste in insert mode
imap <C-V> <C-R>+

" Sorting
vnoremap <C-s> :!sort<CR>

filetype plugin indent on    " required

call plug#begin('~/.vim/plugged')

Plug '907th/vim-auto-save'
let g:auto_save = 1  " 0 is off, 1 is on

Plug 'preservim/nerdcommenter'
nmap <C-/> <Plug>NERDCommenterToggle
vmap <C-/> <Plug>NERDCommenterToggle<CR>

Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf.vim'


call plug#end()
