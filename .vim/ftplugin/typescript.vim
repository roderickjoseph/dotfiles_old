nnoremap <buffer> <C-i> :TsuImport<CR>

nnoremap <buffer> <C-[> :TsuReferences<CR>

nnoremap <buffer> <Leader>e :TsuGeterr<CR>

autocmd FileType typescript nmap <buffer> <Leader>E <Plug>(TsuquyomiRenameSymbolC)

let g:tsuquoyomi_single_quote_import = 1
