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

vim.o.foldenable = true
vim.o.foldmethod = "indent"
vim.o.foldlevel = 99
vim.opt.fillchars = { eob = " ", fold = " " }
vim.opt.foldtext = "v:lua.custom_fold_text()"

function _G.custom_fold_text()
    local line = vim.fn.getline(vim.v.foldstart)
    local lines_count = vim.v.foldend - vim.v.foldstart + 1
    return "▶ " .. line .. " ... (" .. lines_count .. " lines)"
end

vim.api.nvim_create_autocmd("FileType", {
    pattern = { "javascript", "typescript", "typescriptreact", "javascriptreact", "html", "css", "lua", "json", "markdown", "c", "c++", "lua", "header" },
    callback = function()
        vim.bo.tabstop = 4
        vim.bo.shiftwidth = 4
        vim.bo.expandtab = true
    end
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = { "yaml", "yml" },
    callback = function()
        vim.bo.tabstop = 2
        vim.bo.shiftwidth = 2
        vim.bo.expandtab = true
    end
})

vim.o.wrap = true
vim.o.linebreak = true
vim.o.breakindent = true

vim.lsp.buf.code_action()
