"
" init.vim
" @natebwangsut <nate.bwangsut@gmail.com>
" ---
" Personal init.vim for neovim configuration
"

" General settings
runtime ./plugins.vim                   " Load plugins
runtime ./shift.vim                     " Load shift/tab configurations
runtime ./trailing.vim                  " Load trailing spaces configurations

" Lua Configurations
luafile ~/.config/nvim/lualine.lua      " Load statusline

" Keep more info in memory to speed things up:
set hidden
set history=100

" Colour
set termguicolors   " 24-bit colors [vim8+]
set t_Co=256
set t_ut=
" colorscheme codedark
set background=dark
syntax on           " turn on syntax-highlighting

" Fix colour palette for TERM=screen
if &term =~# '^screen'
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

" User Interface
set number relativenumber
set numberwidth=4                   " keep the line number gutter narrow
set showcmd                         " show command in the bottom bar
set wildmenu
set lazyredraw                      " only redraw if needed
set showmatch                       " highlights matching () or {}
set nowrap                          " no wordwarp
set backspace=eol,start,indent      " normal word editor backspace
set ruler                           " show ruler

" Transparent Background - this is useful for unix configurations
hi Normal   guibg=NONE  ctermbg=NONE
hi NonText  guibg=NONE  ctermbg=NONE
hi LineNr   guibg=NONE  ctermbg=NONE

" Use universal clipboard - allowing nvim to copy/pasta from other system
set clipboard=unnamed
