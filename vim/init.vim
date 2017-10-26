"
" Nate Bhurinat Wangsutthitham
" @natebwangsut <nate.bwangsut@gmail.com>
" https://github.com/natebwangsut
"

" Import init.vim
"if filereadable(glob("~/github/dotfiles/vim/init.vim"))
"    source ~/github/dotfiles/vim/init.vim
"endif

" No backward compatible
set nocompatible

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Keep more info in memory to speed things up:
set hidden
set history=100

" Add vim-plug
if filereadable(glob("~/github/dotfiles/vim/plug.vim"))
  source ~/github/dotfiles/vim/plug.vim
endif

" Set statusline
if filereadable(glob("~/github/dotfiles/vim/statusline.vim"))
  source ~/github/dotfiles/vim/statusline.vim
endif

" Colour
set termguicolors   " 24-bit colors
set background=dark
set t_Co=256
syntax on           " turn on syntax-highlighting

" Transparent Background
hi Normal guibg=NONE ctermbg=NONE
hi NonText guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE
"hi SignColumn guibg=NONE ctermbg=NONE
"hi VertSplit guibg=NONE ctermbg=NONE

" Indentation [Spaces & Tabs]
set tabstop=4       " number of spaces per TAB
set softtabstop=4   " number of spaces in TAB when editing
set expandtab       " TABS are spaces
set shiftwidth=4    " set indent spaces when shifting
set autoindent      " auto-indent
set nopaste         " auto-indent off when pasting

" User Interface
set number                      " show line numbers
set numberwidth=2               " keep the line number gutter narrow
set showcmd                     " show command in the bottom bar
set wildmenu
filetype indent on              " load specific filetype indent
filetype plugin on              " load specific filetype plugin
set lazyredraw                  " only redraw if needed
set showmatch                   " highlights matching () or {}
set nowrap                      " no wordwarp
set backspace=eol,start,indent  " normal word editor backspace
set ruler                       " show ruler
set scrolloff=8                 " show 'n' lines under/above cursor

" Search
set ignorecase                  " ignorecase searching
set smartcase                   " smart searching
set incsearch                   " search as characters are enter
set hlsearch                    " highlights matches
" turn off search highlights - mapped into escape
" This unsets the last search pattern register by hitting return
nnoremap <CR> :noh<CR><CR>

" Others..
if filereadable(glob("~/github/dotfiles/vim/others.vim"))
  source ~/github/dotfiles/vim/others.vim
endif
