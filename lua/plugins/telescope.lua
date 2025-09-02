return {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = {
		{
			"<leader>sf",
			function()
				require("telescope.builtin").find_files()
			end,
			mode = "n",
			desc = "Search files",
		},
		{
			"<leader>st",
			function()
				require("telescope.builtin").live_grep()
			end,
			mode = "n",
			desc = "Search text",
		},
	},
}
