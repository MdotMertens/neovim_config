vim.g.mapleader = ' '


local opts = { noremap=true, silent=true}
-- telescope binds
vim.api.nvim_set_keymap('n','<Leader>ff',[[<Cmd>lua require('telescope.builtin').find_files({hidden = true})<CR>]], opts)
vim.api.nvim_set_keymap('n','<Leader>fg',[[<Cmd>lua require('telescope.builtin').live_grep()<CR>]], opts)
vim.api.nvim_set_keymap('n','<Leader>fb',[[<Cmd>lua require('telescope.builtin').file_browser()<CR>]], opts)
vim.api.nvim_set_keymap('n','<Leader>fh',[[<Cmd>lua require('telescope.builtin').help_tags()<CR>]], opts)

-- split windows
vim.api.nvim_set_keymap('n', '<Leader>sv',[[<Cmd>vsplit<CR>]], opts)
vim.api.nvim_set_keymap('n', '<Leader>sh',[[<Cmd>split<CR>]], opts)
vim.api.nvim_set_keymap('n', '<Leader>h',[[<Cmd>wincmd h<CR>]], opts)
vim.api.nvim_set_keymap('n', '<Leader>i',[[<Cmd>wincmd l<CR>]], opts)
vim.api.nvim_set_keymap('n', '<Leader>n',[[<Cmd>wincmd j<CR>]], opts)
vim.api.nvim_set_keymap('n', '<Leader>e',[[<Cmd>wincmd k<CR>]], opts)

--git it
vim.api.nvim_set_keymap('n', '<Leader>gs', [[<Cmd>Git<CR>]], opts)
vim.api.nvim_set_keymap('n', '<Leader>gc', [[<Cmd>Git commit<CR>]], opts)
vim.api.nvim_set_keymap('n', '<Leader>gl', [[<Cmd>Git log<CR>]], opts)
vim.api.nvim_set_keymap('n', '<Leader>gbl', [[<Cmd>Git blame <CR>]], opts)
vim.api.nvim_set_keymap('n', '<Leader>ga', [[<Cmd>Git add %<CR>]], opts)
vim.api.nvim_set_keymap('n', '<Leader>gps', [[<Cmd>Git push <CR>]], opts)
vim.api.nvim_set_keymap('n', '<Leader>gpl', [[<Cmd>Git pull <CR>]], opts)

-- LSP Stuff
vim.api.nvim_set_keymap('n', '<Leader>gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>fr', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>ca', [[<Cmd> lua require('lspsaga.codeaction').code_action()<CR>]], opts)


-- Eliminate Distraction
vim.api.nvim_set_keymap('n', '<Leader>ta', [[<Cmd>TZAtaraxis<CR>]], opts)
vim.api.nvim_set_keymap('n', '<Leader>tm', [[<Cmd>TZMinimalist<CR>]], opts)
vim.api.nvim_set_keymap('n', '<Leader>tf', [[<Cmd>TZFocus<CR>]], opts)


-- Harpoon - Quick File Navigation
vim.api.nvim_set_keymap('n','<Leader>ha',[[<Cmd>lua require('harpoon.mark').add_file()<CR>]], opts)
vim.api.nvim_set_keymap('n','<Leader>hm',[[<Cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>]], opts)

vim.api.nvim_set_keymap('n','<C-n>',[[<Cmd>lua require('harpoon.ui').nav_file(1)<CR>]], opts)
vim.api.nvim_set_keymap('n','<C-e>',[[<Cmd>lua require('harpoon.ui').nav_file(2)<CR>]], opts)
vim.api.nvim_set_keymap('n','<C-i>',[[<Cmd>lua require('harpoon.ui').nav_file(3)<CR>]], opts)
vim.api.nvim_set_keymap('n','<C-o>',[[<Cmd>lua require('harpoon.ui').nav_file(4)<CR>]], opts)
