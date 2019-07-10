" Tsuquyomi shortcuts
" auto import
nnoremap <buffer> <C-i> :TsuImport<CR>
" show all references
nnoremap <buffer> <C-[> :TsuReferences<CR>
" show any errors in quickfix
nnoremap <buffer> <Leader>e :TsuGeterr<CR>
" rename
autocmd FileType typescript nmap <buffer> <Leader>E <Plug>(TsuquyomiRenameSymbolC)

" Settings
let g:tsuquyomi_single_quote_import = 1
