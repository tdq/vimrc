" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'Yggdroot/indentLine'
Plug 'ervandew/supertab'
Plug 'artur-shaik/vim-javacomplete2'

Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'

" Color schemes
Plug 'arcticicestudio/nord-vim'

" Auto completion
Plug 'Valloric/YouCompleteMe'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'vim-syntastic/syntastic'
Plug 'scrooloose/nerdcommenter'
Plug 'othree/html5.vim'

" Initialize plugin system
call plug#end()

syntax on
colorscheme nord
set number
set expandtab
set tabstop=4
set shiftwidth=4
set hlsearch
set incsearch
set cursorline
set mouse=a
set updatetime=250
set encoding=utf8
filetype plugin on

hi CursorLine ctermbg=16

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" vertical line indentation
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#09AA08'
let g:indentLine_char = '│'

autocmd FileType java setlocal omnifunc=javacomplete#Complete

" Mappings
map <C-n> :NERDTreeToggle<CR>
nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)
imap <F4> <Plug>(JavaComplete-Imports-AddSmart)
nmap <F5> <Plug>(JavaComplete-Imports-Add)
imap <F5> <Plug>(JavaComplete-Imports-Add)
nmap <F6> <Plug>(JavaComplete-Imports-AddMissing)
imap <F6> <Plug>(JavaComplete-Imports-AddMissing)
nmap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)
imap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)
