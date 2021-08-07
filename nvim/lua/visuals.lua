vim.cmd[[colorscheme tokyonight]]

require('lualine').setup {
  options = {
    theme = 'tokyonight',
    icons_enabled = false,
    section_separators = {'', ' '},
    component_separators = {'', ''}
  }
}

vim.o.cursorline = true
vim.cmd('au ColorScheme * hi! link CursorLineNR CursorLine')

require'colorizer'.setup()

