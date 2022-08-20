"
" paste.vim
"

" Use <F2> to toggle paste mode (insert, INSERT(paste) and INSERT)
nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>
