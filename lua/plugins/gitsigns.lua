return {
	"lewis6991/gitsigns.nvim",
	event = { "BufReadPre", "BufNewFile" },
	keys = {
		{
			"<leader>gc",
			function()
				require("gitsigns").preview_hunk()
			end,
			desc = "Preview Git hunk",
		},
	},
	config = function()
		require("gitsigns").setup()
	end,
}
