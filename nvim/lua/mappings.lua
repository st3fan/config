
function set_keymap(mode, from, to)
    local opts = { noremap = true, silent = false }
    vim.api.nvim_set_keymap(mode, from, to, opts)
end

set_keymap('n', '<leader>ld', '<cmd>lua vim.lsp.buf.definition()<cr>')
set_keymap('n', '<leader>lD', '<cmd>lua vim.lsp.buf.declaration()<cr>')
set_keymap('n', '<leader>lt', '<cmd>lua vim.lsp.buf.type_definition()<cr>')
set_keymap('n', '<leader>li', '<cmd>lua vim.lsp.buf.implementation()<cr>')
set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>')
set_keymap('n', 'U', '<cmd>lua vim.lsp.buf.signature_help()<cr>')
set_keymap('n', '<leader>lr', '<cmd>lua vim.lsp.buf.references()<cr>')
set_keymap('n', '<leader>ls', '<cmd>lua vim.lsp.buf.document_symbol()<cr>')
set_keymap('n', '<leader>lS', '<cmd>lua vim.lsp.buf.workspace_symbol()<cr>')
set_keymap('n', '<leader>lR', '<cmd>lua vim.lsp.buf.rename()<cr>')
set_keymap('n', '<leader>lf', '<cmd>lua vim.lsp.buf.formatting()<cr>')

