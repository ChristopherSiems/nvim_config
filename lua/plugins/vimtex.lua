return {
	"lervag/vimtex",
	ft = { "tex" },
	keys = {
		{
			"<leader>lv",
			function()
				vim.cmd.VimtexCompile()
			end,
			mode = "n",
			desc = "View compiled LaTeX doc",
		},
	},
	config = function()
		vim.g.vimtex_view_method = "zathura"
		vim.g.Tex_DefaultTargetFormat = "pdf"
	end,
}
