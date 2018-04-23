" vim-plug
call plug#begin('~/.vim/plugged')

" Install Vim Fugitive
Plug 'tpope/vim-fugitive'

" Install Polygot (Syntax)
Plug 'sheerun/vim-polyglot'

" Install indentLine
Plug 'Yggdroot/indentLine'

" Install deoplete.nvim
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

"
call plug#end()
