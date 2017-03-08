" Loading Plugins With Pathogen
execute pathogen#infect()

" Syntax highlighting based on file names
filetype on
syntax on

" Custom theme
colorscheme Tomorrow-Night

" Configure font
set guifont=Menlo\ Regular:h18

" To get Vim to open with a given size
"set lines=35 columns=150

" Add a colored column at 90 to avoid going to far to the righ
set colorcolumn=90

" Add line numbering
set number

" Configure Leader key
let mapleader=" "

" Reload config
map <leader>s :source ~/.vimrc<CR>

set hidden
set history=100

" Have some logic when indenting
filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

" Removes whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e

" When running a search, get Vim to highlight found words
set hlsearch

" When selecting a parenthesis it will highlight the one matching
set showmatch

" NERDTree Config
" Hit the right arrow to open a node:
let NERDTreeMapActivateNode='<right>'
" Display hidden files:
let NERDTreeShowHidden=1
"Toggle display of the tree with <Leader> + n:
nmap <leader>n :NERDTreeToggle<CR>
" Locate the focused file in the tree with <Leader> + j:
nmap <leader>j :NERDTreeFind<CR>
" Always open the tree when booting Vim, but don’t focus it:
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
" Do not display some useless files in the tree:
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp']
