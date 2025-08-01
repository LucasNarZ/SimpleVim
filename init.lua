require("config.lazy")
require("config.keymaps")


vim.opt.relativenumber = true
vim.opt.number = true
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
