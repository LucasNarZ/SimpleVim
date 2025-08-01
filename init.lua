require("config.lazy")
require("config.keymaps")

vim.diagnostic.config({
  virtual_text = {
    prefix = '●',
    spacing = 4,
  },
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})

vim.opt.relativenumber = true
vim.opt.number = true

vim.lsp.buf.code_action()

