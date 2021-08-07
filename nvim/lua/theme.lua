local M = {}

function M.dark()
   vim.g.tokyonight_style = "night"
   vim.o.background = "dark"
end

function M.light()
   vim.g.tokyonight_style = "day"
   vim.o.background = "light"
end

return M

