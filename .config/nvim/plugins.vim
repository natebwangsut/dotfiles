"
" plugins.vim
" @natebwangsut <nate.bwangsut@gmail.com>
" ---
" List of all managed plugins and installation frameworks
"

" Automatically install vim-plug
if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
  if empty(g:plug_home)
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
          \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall | source $MYVIMRC
  endif
endif


" Install plugins
call plug#begin()

" general
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-startify'

" StatusLine
Plug 'hoob3rt/lualine.nvim'

" That's it for this
call plug#end()
