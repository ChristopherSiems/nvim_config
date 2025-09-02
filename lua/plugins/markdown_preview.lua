return {
	"iamcco/markdown-preview.nvim",
	ft = { "markdown" },
	build = function()
		vim.fn["mkdp#util#install"]()
	end,
	keys = {
		{
			"<leader>mp",
			function()
				vim.cmd("MarkdownPreviewToggle")
			end,
			desc = "Markdown Preview",
			mode = "n",
		},
	},
	config = function()
		vim.fn["mkdp#util#install"]()

		vim.g.mkdp_auto_start = 1
		vim.g.mkdp_auto_close = 0
		vim.g.mkdp_theme = "dark"
	end,
}
