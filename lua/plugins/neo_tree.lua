return {
	"nvim-neo-tree/neo-tree.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	opts = {
		filesystem = {
			hijack_netrw_behavior = "open_current",
			filtered_items = {
				visible = true,
				hide_gitignored = false,
				hide_dotfiles = false,
			},
		},
	},
	keys = {
		{
			"<leader>fs",
			function()
				require("neo-tree.command").execute({ source = "filesystem", action = "show", position = "right" })
			end,
			mode = "n",
			desc = "Reveal files",
		},
		{
			"<leader>fc",
			function()
				require("neo-tree.command").execute({ source = "filesystem", action = "close" })
			end,
			mode = "n",
			desc = "Hide files",
		},
		{
			"<leader>ff",
			function()
				require("neo-tree.command").execute({ source = "filesystem", action = "focus", position = "right" })
			end,
			mode = "n",
			desc = "Focus files",
		},
	},
}
