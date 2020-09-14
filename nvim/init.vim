" This Source Code Form is subject to the terms of the Mozilla Public
" License, v. 2.0. If a copy of the MPL was not distributed with this
" file, You can obtain one at http://mozilla.org/MPL/2.0/

call plug#begin('~/.local/share/nvim/plugged')
  Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'preservim/nerdcommenter'
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  Plug 'tpope/vim-fugitive'
call plug#end()

let mapleader=","

set nocompatible

set number                          " show line numbers
set cursorline                      " highlight the line the cursor is on

set tabstop=4                       " number of columns occupied by a tab character
set softtabstop=4                   " see multiple spaces as tabstops so <BS> does the right thing
set expandtab                       " converts tabs to white space
set shiftwidth=4                    " width for autoindents

set noshowcmd                       " slows down over ssh

set termguicolors                   " enable 24-bit color in the terminal
colorscheme dracula                 " color scheme of the say
hi! link CursorLineNR CursorLine    " i like the cursor line to be full width

let g:airline_theme='dracula'
"let g:airline_powerline_fonts = 1
let g:airline#extensions#fugitiveline#enabled = 1

let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1

let g:go_auto_sameids = 1
let g:go_auto_type_info = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1

