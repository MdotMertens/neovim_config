vim.cmd[[colorscheme onenord]]

vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.colorcolumn = "80"

vim.go.hidden = true
vim.go.termguicolors = true

vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.scrolloff = 10
vim.o.undodir = "/home/maurice/.nvim/undodir" 
vim.o.undofile = true
vim.o.foldmethod = "indent"
vim.o.foldlevel = 4

vim.opt.clipboard:append('unnamedplus')

vim.o.completeopt = "menuone,noselect"

require("indent_blankline").setup {
  char = "|",
  buftype_exclude = {"terminal"},
  use_treesitter = true,
  show_current_context = true,
  space_char = ".",
  context_patterns = {
    "class",
    "function",
    "method",
    "^if",
    "while",
    "for",
    "with",
    "func_literal",
    "block",
    "try",
    "except",
    "argument_list",
    "object",
    "dictionary",
    "element"
  }
}

