"
" shift.vim
" @natebwangsut <nate.bwangsut@gmail.com>
" ---
" Configuration for Tab / Space character
"

" Enabling this will make the tab key (in insert mode) insert spaces instead of tab characters.
" This also affects the behavior of the retab command.
set expandtab       " TABS are spaces
set shiftwidth=4    " set indent spaces when shifting

" Enabling this will make the tab key (in insert mode) insert spaces or tabs to go to the next indent
" of the next tabstop when the cursor is at the beginning of a line (i.e. the only preceding characters are whitespace).
set smarttab
set autoindent      " auto-indent
set smartindent     " try to be smart about indenting (C-style)
set shiftround      " always round indents to multiple of shiftwidth
set preserveindent  " save as much indent structure as possible

