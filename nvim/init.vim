
call plug#begin('~/.local/share/nvim/plugged')
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'morhetz/gruvbox'
  Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'neovim/nvim-lsp'
  Plug 'neovim/nvim-lspconfig'
  Plug 'nvim-lua/lsp_extensions.nvim'
  Plug 'nvim-lua/completion-nvim'
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  Plug 'farmergreg/vim-lastplace'
  Plug 'preservim/nerdcommenter'
  Plug 'sonph/onehalf', { 'rtp': 'vim' }
  Plug 'lifepillar/vim-solarized8'
call plug#end()

lua << END
  require('init')
END

set nocompatible

set number
set cursorline
set nowrap

set tabstop=4               " number of columns occupied by a tab character
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents

set termguicolors
set background=light
colorscheme solarized8

let g:solarized_extra_hi_groups=1

"noremap <Up> <NOP>
"noremap <Down> <NOP>
"noremap <Left> <NOP>
"noremap <Right> <NOP>

au FileType javascript set sw=2
au FileType javascript set ts=2
au FileType javascript set sts=2
au FileType javascript set expandtab

au FileType go set noexpandtab
au FileType go set shiftwidth=4
au FileType go set softtabstop=4
au FileType go set tabstop=4

"let g:go_highlight_build_constraints = 1
"let g:go_highlight_extra_types = 1
"let g:go_highlight_fields = 1
"let g:go_highlight_functions = 1
"let g:go_highlight_methods = 1
"let g:go_highlight_operators = 1
"let g:go_highlight_structs = 1
"let g:go_highlight_types = 1
"let g:go_auto_sameids = 0
"let g:go_fmt_command = "goimports"
"let g:go_auto_type_info = 1
"let g:go_def_mode='gopls'
"let g:go_info_mode='gopls'

"au Filetype go nmap <leader>a <Plug>(go-alternate-edit)
"au FileType go nmap <leader>d <Plug>(go-def)
"au FileType go nmap <leader>t :GoTest -short<cr>
"au FileType go nmap <leader>r :GoRun<cr>

let mapleader = ","

" Use <Tab> and <S-Tab> to navigate through popup menu
"inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" use <Tab> as trigger keys
"imap <Tab> <Plug>(completion_smart_tab)
"imap <S-Tab> <Plug>(completion_smart_s_tab)

" Code navigation shortcuts
nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>

"nnoremap <silent> ga    <cmd>lua vim.lsp.buf.code_action()<CR>


" Set updatetime for CursorHold
" 300ms of no cursor movement to trigger CursorHold
"set updatetime=300
" Show diagnostic popup on cursor hold
"autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics()

set updatetime=1500
hi LspReferenceRead cterm=bold ctermbg=red guifg=Brown guibg=DarkYellow
hi LspReferenceText cterm=bold ctermbg=red guifg=Brown guibg=DarkYellow
hi LspReferenceWrite cterm=bold ctermbg=red guifg=Brown guibg=DarkYellow
autocmd CursorHold  * lua vim.lsp.buf.document_highlight()
autocmd CursorHoldI * lua vim.lsp.buf.document_highlight()
autocmd CursorMoved * lua vim.lsp.buf.clear_references()

"autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
"autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()


" Goto previous/next diagnostic warning/error
"nnoremap <silent> g[ <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
"nnoremap <silent> g] <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

" have a fixed column for the diagnostics to appear in
" this removes the jitter when warnings/errors flow in
set signcolumn=yes


