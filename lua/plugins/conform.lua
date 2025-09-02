return {
	"stevearc/conform.nvim",
	lazy = false,
	priority = 66,
	keys = {
		{
			"<leader>fb",
			function()
				require("conform").format({
					quiet = true,
					lsp_fallback = true,
					async = false,
					timeout_ms = 1000,
				})
			end,
			mode = { "n" },
			desc = "Format the current buffer",
		},
	},
	config = function()
		local conform = require("conform")

		conform.setup({
			format_on_save = {
				quiet = true,
				lsp_fallback = true,
				async = false,
				timeout_ms = 1000,
			},
			formatters_by_ft = {
				markdown = { "prettier" },
				yaml = { "prettier" },
				ocaml = { "ocamlformat" },
				tex = { "tex-fmt" },
				javascript = { "prettier" },
				typescript = { "prettier" },
				lua = { "stylua" },
				solidity = { "prettier" },
				python = { "black", "isort", "autopep8" },
			},
		})

		vim.api.nvim_create_autocmd({ "BufEnter", "BufLeave", "BufWritePre" }, {
			callback = function()
				conform.format({
					quiet = true,
					lsp_fallback = true,
					async = false,
					timeout_ms = 1000,
				})
			end,
		})
	end,
}
