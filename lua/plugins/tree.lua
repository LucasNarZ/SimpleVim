return {
	"kyazdani42/nvim-tree.lua",
	config = function()
		require("nvim-tree").setup({
			filters = {
				git_ignored = false
			},
			on_attach = function(bufnr)
				local api = require("nvim-tree.api")
				local function opts(desc)
					return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
				end

				vim.keymap.set("n", "<Space>", api.node.open.edit, opts("Open"))
				vim.keymap.set("n", "<Space>", api.node.open.edit, opts("Open")) 
			end
		})
	end,
}
