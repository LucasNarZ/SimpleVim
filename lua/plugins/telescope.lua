return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "make",
				config = function()
					require("telescope").load_extension("fzf")
				end,
			},
		},
		config = function()
			require("telescope").setup({
				defaults = {
					sorting_strategy = "ascending",
					layout_strategy = "horizontal",
					file_ignore_patterns = {
						"node_modules/",
						".git/",
						"dist/",
						"build/",
						"%.lock",
						"yarn%.cache/",
					},      
				},	
			})
		end,
	},
} 
