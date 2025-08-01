return {
    "kyazdani42/nvim-tree.lua",
    config = function()
	    require("nvim-tree").setup({
		    filters = {
			    git_ignored = false
		    },
		    view = {
			    mapping = {
				    custom_only = false,
				    list = {
					  { key = "<Space>", action = "edit_or_open", mode = "n" }
				    }
			    }
		    }
	    })
    end,
}
