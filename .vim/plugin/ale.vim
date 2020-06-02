let g:ale_fixers = {
            \ '*': ['remove_trailing_lines', 'trim_whitespace'],
            \ 'javascript': ['eslint'],
            \ 'typescript': ['tslint'],
            \}

let g:ale_fix_on_save = 1

map <leader>t :ALEToggle<CR>
