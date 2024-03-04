" remember to set makeprg to the build directory of the project ex:
" :set makeprg=make\ -C\ ~/path/to/project/make
" autocmd BufWritePost * Neomake!
nmap <silent> \l :copen<CR>

" call g:BuildInSubDir("/build") on open
autocmd BufNewFile,BufRead * silent! call g:BuildInSubDir("/build")

" code folding
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1

set shiftwidth=2
set tabstop=2
set softtabstop=2
set autoindent
set copyindent
