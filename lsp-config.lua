local nvim_lsp = require("lspconfig")

local on_attach = function(client, bufnr)
  local buf_map = function(mode, lhs, rhs)
    vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, { noremap = true, silent = true })
  end

  buf_map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
  buf_map("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>")
  buf_map("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>")
end

nvim_lsp.tsserver.setup{
  on_attach = on_attach,
  flags = {
    debounce_text_changes = 150,
  }
}

