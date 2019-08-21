"
" Nate Bhurinat Wangsutthitham
" @natebwangsut <nate.bwangsut@gmail.com>
" https://github.com/natebwangsut/dotfiles
"

" No backward compatible
set nocompatible

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Keep more info in memory to speed things up:
set hidden
set history=100

" Add vim-plug
if filereadable(glob("$HOME/.vim/plug.vim"))
  source $HOME/.vim/plug.vim
endif

" Language Specific Settings
"filetype indent on              " load specific filetype indent
"filetype plugin on              " load specific filetype plugin

" Set statusline
if filereadable(glob("$HOME/.vim/statusline.vim"))
  source $HOME/.vim/statusline.vim
endif

" Set pastemode
if filereadable(glob("$HOME/.vim/paste.vim"))
  source $HOME/.vim/paste.vim
endif

" Let <Tab> also do completion
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction

inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
"set dictionary="/usr/dict/words"

" Colour
set termguicolors   " 24-bit colors [vim8]
set t_Co=256
set background=dark
syntax on           " turn on syntax-highlighting
colorscheme nord

" Fix colour palette for TERM=screen
if &term =~# '^screen'
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

" Transparent Background
hi Normal guibg=NONE ctermbg=NONE
hi NonText guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE
"hi SignColumn guibg=NONE ctermbg=NONE
"hi VertSplit guibg=NONE ctermbg=NONE

" Undo
set undolevels=1000             " Set undo amount to 1000

" Indentation [Spaces & Tabs]
set expandtab ts=4 sw=4 ai
autocmd FileType * set expandtab
set tabstop=4       " number of spaces per TAB

" Setting this to a non-zero value other than tabstop will make the tab key (in insert mode)
" insert a combination of spaces (and possibly tabs) to simulate tab stops at this width.
set softtabstop=0

" Enabling this will make the tab key (in insert mode) insert spaces instead of tab characters.
" This also affects the behavior of the retab command.
set expandtab       " TABS are spaces
set shiftwidth=4    " set indent spaces when shifting

" Enabling this will make the tab key (in insert mode) insert spaces or tabs to go to the next indent
" of the next tabstop when the cursor is at the beginning of a line (i.e. the only preceding characters are whitespace).
set smarttab
set autoindent      " auto-indent
set smartindent     " try to be smart about indenting (C-style)
set shiftround      "  always round indents to multiple of shiftwidth
set preserveindent  " save as much indent structure as possible
" set paste           " auto-indent off when pasting

" User Interface
set number relativenumber
set numberwidth=4               " keep the line number gutter narrow
set showcmd                     " show command in the bottom bar
set wildmenu
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
if filereadable(glob("$HOME/.vim/others.vim"))
  source $HOME/.vim/others.vim
endif
