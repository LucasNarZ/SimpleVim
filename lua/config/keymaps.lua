local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

local opts = { noremap = true, silent = true }

-- Normal mode
vim.keymap.set("n", "y", '"+y', opts)
vim.keymap.set("n", "yy", '"+yy', opts)
vim.keymap.set("n", "p", '"+p', opts)
vim.keymap.set("n", "P", '"+P', opts)
vim.keymap.set("n", "d", '"+d', opts)
vim.keymap.set("n", "dd", '"+dd', opts)

-- Visual mode
vim.keymap.set("v", "y", '"+y', opts)
vim.keymap.set("v", "d", '"+d', opts)
vim.keymap.set("v", "p", '"+p', opts)
vim.keymap.set("v", "P", '"+P', opts)

vim.keymap.set('t', '<C-x>', '<C-\\><C-n><Cmd>ToggleTerm<CR>', opts) 

vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)

