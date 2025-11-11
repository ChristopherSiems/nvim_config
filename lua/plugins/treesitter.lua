return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"lua",
				"markdown",
				"markdown_inline",
				"latex",
				"json",
				"html",
				"yaml",
				"liquid",
				"ocaml",
				"r",
				"python",
				"asm",
				"typst",
				"c",
				"make",
				"javascript",
				"typescript",
				"solidity",
				"java",
			},
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
