filetype off

let s:pluginsdir=g:vardir.'/plugins'
let s:vundledir=s:pluginsdir.'/Vundle.vim'

" Get Vundle if it does not yet exist
if !isdirectory(s:vundledir)
  silent execute '!git clone https://github.com/VundleVim/Vundle.vim.git '.s:vundledir
endif

" set the runtime path to include Vundle and initialize
let &rtp.=','.s:vundledir
call vundle#begin(s:pluginsdir)

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" language
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'elzr/vim-json'
Plugin 'leafgarland/typescript-vim'
Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'quramy/tsuquyomi'

" completion
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'skywind3000/gutentags_plus'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'jiangmiao/auto-pairs'
Plugin 'alvan/vim-closetag'

" code display
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'posva/vim-vue'
Plugin 'morhetz/gruvbox'
Plugin 'edkolev/tmuxline.vim'

" integrations
Plugin 'tpope/vim-commentary'
Plugin 'dense-analysis/ale'

" interface
Plugin 'vim-airline/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

" commands
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'kana/vim-textobj-user'
Plugin 'whatyouhide/vim-textobj-xmlattr'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on
