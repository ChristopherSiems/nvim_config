return {
	"williamboman/mason.nvim",
	lazy = false,
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer",
	},
	config = function()
		require("mason").setup()

		require("mason-lspconfig").setup({
			ensure_installed = {
				"yamlls",
				"lua_ls",
				"marksman",
				"jsonls",
				"texlab",
				"html",
				"tinymist",
				"clangd",
				"ts_ls",
				"solidity_ls",
				"efm",
				"pyright",
				"jdtls",
			},
			automatic_installation = true,
		})

		require("mason-tool-installer").setup({
			auto_update = true,
			ensure_installed = {
				"prettier",
				"tex-fmt",
				"stylua",
				"black",
				"isort",
				"autopep8",
				"typstyle",
			},
		})
	end,
}
