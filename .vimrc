" Settings for jetbrains
"" Set properties
set encoding=UTF-8
" Move unsave buffers
set hidden
" Show command preview
set inccommand=split
" Set tab columns = 4
set tabstop=4
" Ident 2 by 2
set shiftwidth=2
" Change tab to spaces
set expandtab
" Incremental search
set incsearch
" Ignore case when searching
set ignorecase
" Ignore case when searching lowercase
set smartcase
" Auto indent
set smartindent
set updatetime=250
" Use mouse all modes
set mouse=a

" show chars
"set list
set listchars=tab:→\ ,trail:∙,eol:¬
" Highlight cursor position
set cursorline
" LightLine
set noshowmode

"" Display
" Number lines
set number
set relativenumber

"" Keybinds
" Map leader to Space
let mapleader="\<space>"

" Remap Esc
imap jk <esc>

" Copy from clipborad
vnoremap YY "+y<cr>
