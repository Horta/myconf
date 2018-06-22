call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'haya14busa/incsearch.vim'
Plug 'bling/vim-airline'
Plug 'Chiel92/vim-autoformat'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-eunuch'
Plug 'dracula/vim'
Plug 'fidian/hexmode'
Plug 'brooth/far.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'blueyed/vim-diminactive'
Plug 'ambv/black'

call plug#end()

set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
let g:airline#extensions#tabline#enabled = 1
set clipboard=unnamedplus
set completeopt-=preview

nnoremap “ :bprev<CR>
nnoremap ‘ :bnext<CR>
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

" let g:formatter_yapf_style = 'pep8'
au FileType *.py let b:autoformat_autoindent=0
au FileType *.py let b:black_fast=1
au BufWrite *.vim :Autoformat
autocmd BufWritePost *.py silent! execute ':Black'

:command Q bp|bd #

filetype plugin on

set timeoutlen=1000 ttimeoutlen=0

if (empty($TMUX))
    if (has("nvim"))
        let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif
    if (has("termguicolors"))
        set termguicolors
    endif
endif

" colorscheme onehalfdark
color dracula
let g:airline_theme='dracula'

let &colorcolumn=join(range(80,999),",")
highlight ColorColumn ctermbg=235 guibg=#191919
highlight NonText ctermbg=235 guibg=#191919

" Open NERDTree if vim is invoked without argument.
autocmd StdinReadPre * let s:std_in=1
if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in")
    autocmd VimEnter * | exe 'NERDTree' argv()[0] | wincmd p | ene
endif

:command NE NERDTree
set mouse=
