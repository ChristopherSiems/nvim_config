return {
	"chomosuke/typst-preview.nvim",
	ft = { "typst" },
	keys = {
		{
			"<leader>tp",
			function()
				vim.cmd("TypstPreviewToggle")
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
