call plug#begin('~/.local/share/nvim/plugged')

Plug 'terryma/vim-multiple-cursors'
Plug 'scrooloose/nerdtree'
Plug 'dracula/vim'
Plug 'romainl/vim-cool'
Plug 'bling/vim-airline'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Chiel92/vim-autoformat'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-eunuch'
Plug 'yuttie/comfortable-motion.vim'
Plug 'sonph/onehalf', {'rtp': 'vim/'}

call plug#end()

set tabstop=4
set shiftwidth=4
set expandtab
let g:airline#extensions#tabline#enabled = 1
set clipboard=unnamedplus
set mouse=nicr

nnoremap “ :bprev<CR>
nnoremap ‘ :bnext<CR>

nnoremap <C-\> :NERDTreeToggle<CR>
au BufWrite *.py :Autoformat

:command Q bp|bd #

filetype plugin on

set timeoutlen=1000 ttimeoutlen=0

let g:deoplete#enable_at_startup = 1

noremap <silent> <ScrollWheelDown> :call comfortable_motion#flick(40)<CR>
noremap <silent> <ScrollWheelUp>   :call comfortable_motion#flick(-40)<CR>

"Credit joshdick
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
    if (has("nvim"))
        "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
        let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif
    "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
    "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
    " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
    if (has("termguicolors"))
        set termguicolors
    endif
endif

colorscheme onehalfdark
let g:airline_theme='onehalfdark'

let &colorcolumn=join(range(80,999),",")
highlight ColorColumn ctermbg=235 guibg=#191919
highlight NonText ctermbg=235 guibg=#191919
