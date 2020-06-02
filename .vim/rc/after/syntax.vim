syntax enable

set termguicolors

let g:gruvbox_italic=1
let g:gruvbox_guisp_fallback = 'bg'
colorscheme gruvbox

set bg=dark

" Correctly colors 'buffers' tag at top right.
" See https://github.com/morhetz/gruvbox/issues/250#issuecomment-497515477
autocmd VimEnter * hi! link airline_tablabel_right airline_tabtype
