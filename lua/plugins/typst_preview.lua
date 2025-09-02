return {
	"chomosuke/typst-preview.nvim",
	ft = { "typst" },
	keys = {
		{
			"<leader>tp",
			function()
				require("typst-preview").toggle()
			end,
			mode = "n",
			desc = "Preview Typst document",
		},
	},
	config = function()
		require("typst-preview").setup({
			dependencies_bin = { tinymist = "tinymist" },
		})
	end,
}
