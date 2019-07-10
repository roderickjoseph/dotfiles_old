" displays all buffers in a top bar when only one tab is open
let g:airline#extensions#tabline#enabled = 1

" do not collapse the path names
let g:airline#extensions#tabline#fnamecollapse = 0

" make sure the symbols dictionary exists
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_powerline_fonts = 1

let g:airline_left_sep = ''
let g:airline_righ_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.linear = '☰'
let g:airline_symbols.maxlinear = ''
