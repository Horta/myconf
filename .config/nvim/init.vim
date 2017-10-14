call plug#begin('~/.local/share/nvim/plugged')

Plug 'terryma/vim-multiple-cursors'
Plug 'scrooloose/nerdtree'
Plug 'crusoexia/vim-monokai'
Plug 'dracula/vim'
Plug 'romainl/vim-cool'
Plug 'bling/vim-airline'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Chiel92/vim-autoformat'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-eunuch'
Plug 'thaerkh/vim-workspace'

call plug#end()

set tabstop=4
set shiftwidth=4
set expandtab
set termguicolors
let g:airline#extensions#tabline#enabled = 1
set clipboard=unnamedplus
set mouse=nicr

nnoremap “ :bprev<CR>
nnoremap ‘ :bnext<CR>

nnoremap <C-\> :NERDTreeToggle<CR>
"autocmd BufWritePre *.py :Autoformat
au BufWrite * :Autoformat

:command Q bp|bd #

filetype plugin on
syntax on
color dracula
set timeoutlen=1000 ttimeoutlen=0

nnoremap <C-s> :ToggleWorkspace<CR>
let g:workspace_session_name = '.session.vim'
let g:workspace_autosave = 1
let g:workspace_autosave_ignore = ['gitcommit', 'qf', 'nerdtree', 'tagbar']
let g:deoplete#enable_at_startup = 1
