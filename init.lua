require("config.lazy")
require("config.keymaps")

local nvim_lsp = require("lspconfig")

nvim_lsp.tsserver.setup{}
vim.opt.relativenumber = true
vim.opt.number = true
