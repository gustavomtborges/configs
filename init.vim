call plug#begin('~/.local/share/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'morhetz/gruvbox'
Plug 'davidhalter/jedi-vim'
Plug 'justinmk/vim-sneak'
Plug 'kshenoy/vim-signature'
Plug 'tpope/vim-surround'

" Autocomplete codes
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern'  }
Plug 'slashmili/alchemist.vim'

call plug#end()
"" Set properties
set hidden
set inccommand=split
" True Colors enable.
set termguicolors

" Set tab = 4
set tabstop=4
set shiftwidth=4

" Number lines
set number
set relativenumber

"" Use deoplete.
let g:deoplete#enable_at_startup = 1
" let g:deoplete#disable_auto_complete = 1

" NERDTree Configuration
let g:NERDTreeWinPos = "right"
let g:NERDTreeWinSize = 50
nnoremap <silent> <F2> :NERDTreeFind<CR>
nnoremap <silent> <F3> :NERDTreeToggle<CR>

" Theming
colorscheme gruvbox  

" disable autocompletion, cause we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"

" Always show buffer name
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

" Sneak search
let g:sneak#label = 1
nmap f <Plug>Sneak_s
nmap F <Plug>Sneak_S

" Map leader to ,
let mapleader="\<space>"

"" Keybinds
nnoremap <leader>; A;<esc>
imap jj <esc>

"" Split
noremap <leader>h :<C-u>split<CR>
noremap <leader>v :<C-u>vsplit<CR>

"" Clean search (highlight)
nnoremap <silent> <leader>, :noh<cr>

"" Buffer nav
noremap <leader>q :bp<CR>
noremap <leader>w :bn<CR>

"" Close buffer
noremap <leader>c :bd<CR>

