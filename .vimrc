set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" This is the Vundle package, which can be found onHub.
" ForHub repos, you specify plugins using the
" 'user/repository' format
Plugin 'gmarik/vundle'

" Line numbering
Plugin 'jeffkreeftmeijer/vim-numbertoggle'

" Markdown support
Plugin 'Markdown'

" Commenting
Plugin 'tomtom/tcomment_vim'

" Search plugins
Plugin 'ctrlp.vim'
Plugin 'scrooloose/nerdtree'

" Coloring
Plugin 'flazz/vim-colorschemes'

" cTags
Bundle 'craigemery/vim-autotag'

" Ruby stuff 
Plugin 'vim-ruby/vim-ruby'
Plugin 'rails.vim'
Plugin 'vroom'
Plugin 'tpope/vim-endwise'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'ngmy/vim-rubocop'

Plugin 'auto-pairs'

" Multiple cursors
Plugin 'vim-multiple-cursors'

" Surround
Plugin 'tpope/vim-surround'

" Now we can turn our filetype functionality back on
filetype plugin indent on

set cursorline
set cursorcolumn

" Menu style on file/directory tab completion
set wildmode=longest,list,full
set wildmenu

" Tabswidth
set softtabstop=2
set shiftwidth=2
set tabstop=2

" Highlight search results
set ignorecase hlsearch
set incsearch

""" Enable lazy line move
" Normal mode
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==

" Insert mode
inoremap <C-j> <ESC>:m .+1<CR>==gi
inoremap <C-k> <ESC>:m .-2<CR>==gi

" Visual mode
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" Colorscheme
syntax enable
set background=dark
colorscheme quantum 

" cTags
set tags=./tags

" Default line numbering
set nu

" Duplicate block / line
let mapleader = ","
nmap <leader>d yyp
vmap <leader>d y'>p
imap <C-d> <ESC>yypi

" Open NERDTree
nmap <leader>ne :NERDTreeToggle<cr>

" ctrlP stuff
set wildignore+=*//*,*/.hg/*,*/.svn/*

" Find mapping
map <C-f> /

" Commenting easier
vmap <C-m> gc
map <C-m> gcc

" Cut, Paste, Copy
vmap <C-x> d
vmap <C-v> p
vmap <C-c> y

"Gutter toggle
noremap  <Leader>g GutterToggle<CR>

" RuboCop stuff
let g:vimrubocop_keymap = 0
nmap <Leader>r :RuboCop<CR>

" Tabbing and windows
map <LEADER>t :tabe<RETURN>
map <LEADER>sv :sv<RETURN>
