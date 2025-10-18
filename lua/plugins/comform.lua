return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				javascript = {"prettier", stop_after_first = true },
			},
		})
	end
}
