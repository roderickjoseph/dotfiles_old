" must explicitly set ale fixers
let g:ale_fixers = {
      \ 'python': ['autopep8'],
      \ 'javascript': ['eslint'],
      \ 'typescript': ['tslint'],
      \ }

" automatically fix on save
let g:ale_fix_on_save = 1

map <leader>t :ALEToggle<CR>
