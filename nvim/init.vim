set nocompatible
set termguicolors

lua require('plugins')
lua require('options')
lua require('visuals')
lua require('lsp')
lua require('golang')
lua require('mappings')

command! Dark lua require('theme').dark()
command! Light lua require('theme').light()

"autocmd BufWritePost * GitGutter
"autocmd BufWritePre *.go :silent! lua require('go.format').gofmt()

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope git_files<cr>
nnoremap <leader>fs <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

