"
" plug.vim
"

" vim-plug
call plug#begin('~/.vim/plugged')

" Install Vim Sensible
Plug 'tpope/vim-sensible'

" Install Vim Fugitive
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-vinegar'

" Install Syntax plugins
Plug 'sheerun/vim-polyglot'
Plug 'vim-syntastic/syntastic'

" Install indentLine
Plug 'Yggdroot/indentLine'

" Install completor.vim
Plug 'maralla/completor.vim'

" Install Theme
Plug 'tomasiser/vim-code-dark'

" Install Lint Engine
" Plug 'dense-analysis/ale'

call plug#end()
