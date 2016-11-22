
" ------------------------------------------------
" Nate BW
" ThePooE
" Malevolent Meaw
" github.com/ThePooE
" ------------------------------------------------

" No backward compatible
set nocompatible

" Plugins {{{
" Add Vim Plug
call plug#begin('~/.vim/plugged')

" Install Vim Sensible
Plug 'tpope/vim-sensible'
" Install Vim Fugitive
Plug 'tpope/vim-fugitive'
" Install Lightline
Plug 'itchyny/lightline.vim'
" Install NERDTree
Plug 'scrooloose/nerdtree'
" Install Dracula
Plug 'crusoexia/vim-dracula'
" Install Deoplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Install Neocomplete
Plug 'Shougo/neocomplete'
" Install Polygot (Syntax)
Plug 'sheerun/vim-polyglot'
" Install indentLine
Plug 'Yggdroot/indentLine'
call plug#end()
"}}}
" Colour {{{
set termguicolors
if !has('gui_running')
  set t_Co=256
endif
colorscheme dracula
syntax on
" }}}
" Spaces & Tabs {{{
set tabstop=4  " number of spaces per TAB
set softtabstop=4  " number of spaces in TAB when editing
set expandtab  " tabs are spaces
set shiftwidth=4  " set indent spaces when shifting
set autoindent  " auto indent
" }}}
" User Interface {{{
" ----- UI Settings ----- "
set number  " show line numbers
set showcmd  " show command in the bottom bar
"set cursorline  " highlights the current line
set wildmenu
filetype indent on  " load specific filetype indent
filetype plugin on  " load specific filetpye plugin
set lazyredraw  " redraw if needed
set showmatch  " highlights matching () or {}
set nowrap  " no wordwarp
set backspace=eol,start,indent  " normal word editor backspace
set ruler
set scrolloff=8 " show 8 lines under/above cursor
 " }}}
" Searching {{{
" ----- Searching Settings ----- "
set ignorecase  " ignorecase searching
set smartcase   " smart searching
set incsearch   " search as characters are enter
set hlsearch    " highlifhgt matches"
" turn off search highlights - mapped into escape
" This unsets the last search pattern register by hitting return
nnoremap <CR> :noh<CR><CR>
" }}}
" Folding {{{
" ----- Folding Settings ----- "
set foldenable  " enable folding
set foldlevelstart=10  " open most folds by default
set foldnestmax=10  " 10 nested fold max
" space open/close folds
nnoremap <space> za
set foldmethod=marker  " fold based on marker
set modelines=1
" }}}
" Movement {{{
" ----- Movement Settings ----- "
" highlights last inserted text
" }}}
" Leader {{{
" ----- Leader Settings ----- "
"let mapleader="'"  " leader is comma
"}}}

" Plugin Settings {{{
" ----- Plugins Settings ----- "
" Lightline Configurat ion {{{
" ----- Lightline Configuration ----- "
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'filename' ] ]
      \ },
      \ 'component_function': {
      \   'fugitive': 'LightLineFugitive',
      \   'readonly': 'LightLineReadonly',
      \   'filename': 'LightLineFilename'
      \ },
	  \ 'separator': { 'left': '', 'right': '' },
	  \ 'subseparator': { 'left': '', 'right': '' }
      \ }

function! LightLineReadonly()
	return &readonly ? '' : ''
endfunction

function! LightLineFugitive()
  if exists("*fugitive#head")
    let branch = fugitive#head()
    return branch !=# '' ? ''.branch : ''
  endif
  return ''
endfunction

function! LightLineFilename()
  return ('' != LightLineReadonly() ? LightLineReadonly() . ' ' : '') .
       \ ('' != expand('%:t') ? expand('%:t') : '[No Name]')
endfunction
" }}}
" Deoplete Configuration {{{
" ----- Deoplete Configuration ----- "
" If using Neovim
if (has("nvim"))
    " Use Deoplete
    let g:deoplete#enable_at_startup = 1
    " Enable smart cases
    let g:deoplete#enable_smart_case = 1

    " plugin key-mappings.
    inoremap <expr><c-g>     deoplete#undo_completion()
    inoremap <expr><c-l>     deoplete#complete_common_string()

    " recommended key-mappings.
    " <cr>: close popup and save indent.
    "inoremap <silent> <cr> <c-r>=<sid>my_cr_function()<cr>
    "function! s:my_cr_function()
    "    return (pumvisible() ? "\<c-y>" : "" ) . "\<cr>"
    " for no inserting <cr> key.
    "return pumvisible() ? "\<c-y>" : "\<cr>"
    "endfunction
    " <tab>: completion.
    inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
    " <c-h>, <bs>: close popup and delete backword char.
    "inoremap <expr><c-h> deoplete#smart_close_popup()."\<c-h>"
    "inoremap <expr><bs> deoplete#smart_close_popup()."\<c-h>"
endif
" ---- End of deoplete configuration ----- "
" }}}
" Neocomplete Configuration {{{
" ---- Neocomplete ---- "'
" If not using neovim
if (!has("nvim"))
    " Disable AutoComplPop.
    let g:acp_enableAtStartup = 0
    " Use neocomplete.
    let g:neocomplete#enable_at_startup = 1
    " Use smartcase.
    let g:neocomplete#enable_smart_case = 1
    " Set minimum syntax keyword length.
    let g:neocomplete#sources#syntax#min_keyword_length = 3
    let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

    " define dictionary.
    let g:neocomplete#sources#dictionary#dictionaries = {
        \ 'default' : '',
        \ 'vimshell' : $home.'/.vimshell_hist',
        \ 'scheme' : $home.'/.gosh_completions'
            \ }

    " define keyword.
    if !exists('g:neocomplete#keyword_patterns')
        let g:neocomplete#keyword_patterns = {}
    endif
    let g:neocomplete#keyword_patterns['default'] = '\h\w*'

    " plugin key-mappings.
    inoremap <expr><c-g>     neocomplete#undo_completion()
    inoremap <expr><c-l>     neocomplete#complete_common_string()

    " recommended key-mappings.
    " <cr>: close popup and save indent.
    inoremap <silent> <cr> <c-r>=<sid>my_cr_function()<cr>
    function! s:my_cr_function()
        return (pumvisible() ? "\<c-y>" : "" ) . "\<cr>"
    " for no inserting <cr> key.
    "return pumvisible() ? "\<c-y>" : "\<cr>"
    endfunction
    " <tab>: completion.
    inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
    " <c-h>, <bs>: close popup and delete backword char.
    inoremap <expr><c-h> neocomplete#smart_close_popup()."\<c-h>"
    inoremap <expr><bs> neocomplete#smart_close_popup()."\<c-h>"
    " close popup by <space>.
    "inoremap <expr><space> pumvisible() ? "\<c-y>" : "\<space>"

    " autocomplpop like behavior.
    "let g:neocomplete#enable_auto_select = 1

    " shell like behavior(not recommended).
    "set completeopt+=longest
    "let g:neocomplete#enable_auto_select = 1
    "let g:neocomplete#disable_auto_complete = 1
    "inoremap <expr><tab>  pumvisible() ? "\<down>" : "\<c-x>\<c-u>"

    " enable omni completion
    autocmd filetype css setlocal omnifunc=csscomplete#completecss
    autocmd filetype html,markdown setlocal omnifunc=htmlcomplete#completetags
    autocmd filetype javascript setlocal omnifunc=javascriptcomplete#completejs
    autocmd filetype python setlocal omnifunc=pythoncomplete#complete
    autocmd filetype xml setlocal omnifunc=xmlcomplete#completetags

    " enable heavy omni completion.
    if !exists('g:neocomplete#sources#omni#input_patterns')
        let g:neocomplete#sources#omni#input_patterns = {}
    endif
    "let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
    "let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
    "let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

    " for perlomni.vim setting.
    " https://github.com/c9s/perlomni.vim
    let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
endif
" }}}
" }}}

" Auto read the file if its were to changed from outstide the vim
set autoread

" Remove whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e

let g:netrw_liststyle=3

" Do not create backup files
set nobackup
set nowritebackup
set noswapfile

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Auto-Indent off when pasting
set nopaste

" Keep more info in memory to speed things up:
set hidden
set history=100

" Use Universal Clipboard
set clipboard=unnamed

" Show filename in title
set title

" Auto Fold the page
" vim:foldmethod=marker:foldlevel=0
