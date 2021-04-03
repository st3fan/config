--- Taken from https://github.com/jan-xyz/Dotfiles/tree/master/nvim

local nvim_lsp = require'lspconfig'

nvim_lsp.gopls.setup{
  settings = {
    gopls = {
      gofumpt = true,
      analyses = {
        shadow = true,
        unusedparams = true,
      },
      staticcheck = true,
    }
  }
}

local on_attach = function(client, bufnr)
  -- Autoformat on save
  if client.resolved_capabilities.document_formatting then
      vim.api.nvim_exec([[
      augroup Format
        autocmd! * <buffer>
        autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting()
      augroup END
      ]], false)
  end
end

local servers = { "gopls"  }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup { on_attach = on_attach }
end

