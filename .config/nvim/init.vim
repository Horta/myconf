call plug#begin('~/.local/share/nvim/plugged')

Plug 'terryma/vim-multiple-cursors'
Plug 'scrooloose/nerdtree'
Plug 'haya14busa/incsearch.vim'
Plug 'bling/vim-airline'
Plug 'Chiel92/vim-autoformat'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-eunuch'
Plug 'yuttie/comfortable-motion.vim'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'wincent/command-t', {'do': 'cd ruby/command-t/ext/command-t && ruby extconf.rb && make'}
Plug 'fidian/hexmode'
Plug 'brooth/far.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'vim-scripts/ReplaceWithRegister'

call plug#end()

set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
let g:airline#extensions#tabline#enabled = 1
set clipboard=unnamedplus
set mouse=nicr
set completeopt-=preview
noremap <silent> <ScrollWheelDown> :call comfortable_motion#flick(40)<CR>
noremap <silent> <ScrollWheelUp>   :call comfortable_motion#flick(-40)<CR>

nnoremap “ :bprev<CR>
nnoremap ‘ :bnext<CR>
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
" :h g:incsearch#auto_nohlsearch
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

au FileType *.py let b:autoformat_autoindent=0
au BufWrite *.py,*.vim :Autoformat

:command Q bp|bd #

filetype plugin on

set timeoutlen=1000 ttimeoutlen=0

let g:deoplete#enable_at_startup = 1

if (empty($TMUX))
    if (has("nvim"))
        let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif
    if (has("termguicolors"))
        set termguicolors
    endif
endif

colorscheme onehalfdark
let g:airline_theme='onehalfdark'

let &colorcolumn=join(range(80,999),",")
highlight ColorColumn ctermbg=235 guibg=#191919
highlight NonText ctermbg=235 guibg=#191919


" Called once right before you start selecting multiple cursors
function! Multiple_cursors_before()
    if exists('g:deoplete#disable_auto_complete')
        let g:deoplete#disable_auto_complete = 1
    endif
endfunction

" Called once only when the multiple selection is canceled (default <Esc>)
function! Multiple_cursors_after()
    if exists('g:deoplete#disable_auto_complete')
        let g:deoplete#disable_auto_complete = 0
    endif
endfunction

