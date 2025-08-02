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

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "javascript", "typescript", "typescriptreact", "javascriptreact", "html", "css", "lua", "json", "yaml", "markdown" },
	callback = function()
		vim.bo.tabstop = 2
		vim.bo.shiftwidth = 2
		vim.bo.expandtab = true
	end
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = {"c", "lua", "c++"},
	callback = function()
		vim.bo.tabstop = 4
		vim.bo.shiftwidth = 4
		vim.bo.expandtab = true
	end
})

vim.o.wrap = true
vim.o.linebreak = true
vim.o.breakindent = true

vim.lsp.buf.code_action()

