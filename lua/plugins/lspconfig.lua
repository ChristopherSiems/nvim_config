return {
	"neovim/nvim-lspconfig",
	lazy = false,
	dependencies = {
		"creativenull/efmls-configs-nvim",
	},
	keys = {
		{ "<leader>Ds", vim.lsp.buf.hover, mode = "n", desc = "Show documentation" },
		{ "<leader>ds", vim.lsp.buf.definition, mode = "n", desc = "Show definition" },
		{ "<leader>ca", vim.lsp.buf.code_action, mode = "n", desc = "List code actions" },
		{ "<leader>dg", vim.lsp.buf.declaration, mode = "n", desc = "Go to declaration" },
		{ "<leader>rn", vim.lsp.buf.rename, mode = "n", desc = "Rename symbol" },
	},
	config = function()
		local cmp_nvim_lsp = require("cmp_nvim_lsp")
		local capabilities = cmp_nvim_lsp.default_capabilities()

		local util = require("lspconfig.util")
		local root_patterns = util.root_pattern(".git", ".gitignore")

		vim.lsp.config("efm", {
			capabilities = capabilities,
			filetypes = { "solidity" },
			root_dir = root_patterns,
			init_options = { documentFormatting = true },
			settings = {
				languages = {
					solidity = {
						require("efmls-configs.formatters.prettier"),
					},
				},
			},
		})
		vim.lsp.enable("efm")

		vim.lsp.config("solidity_ls", {
			capabilities = capabilities,
			filetypes = { "solidity" },
			root_dir = root_patterns,
		})
		vim.lsp.enable("solidity_ls")

		vim.lsp.config("lua_ls", {
			capabilities = capabilities,
			settings = {
				Lua = {
					diagnostics = { globals = { "vim" } },
					workspace = { checkThirdParty = false },
				},
			},
		})
		vim.lsp.enable("lua_ls")

		vim.lsp.config("tinymist", {
			capabilities = capabilities,
			settings = {
				formatterMode = "typstfmt",
			},
		})
		vim.lsp.enable("tinymist")

		vim.lsp.config("yamlls", {
			capabilities = capabilities,
			settings = {
				yaml = { validate = false },
			},
		})
		vim.lsp.enable("yamlls")

		vim.lsp.config("marksman", {
			capabilities = capabilities,
		})
		vim.lsp.enable("marksman")

		vim.lsp.config("jsonls", {
			capabilities = capabilities,
		})
		vim.lsp.enable("jsonls")

		vim.lsp.config("texlab", {
			capabilities = capabilities,
		})
		vim.lsp.enable("texlab")

		vim.lsp.config("html", {
			capabilities = capabilities,
		})
		vim.lsp.enable("html")

		vim.lsp.config("ocamllsp", {
			capabilities = capabilities,
		})
		vim.lsp.enable("ocamllsp")

		vim.lsp.config("clangd", {
			capabilities = capabilities,
		})
		vim.lsp.enable("clangd")

		vim.lsp.config("ts_ls", {
			capabilities = capabilities,
		})
		vim.lsp.enable("ts_ls")

		vim.lsp.config("pyright", {
			capabilities = capabilities,
		})
		vim.lsp.enable("pyright")

		vim.lsp.config("jdtls", {
			capabilities = capabilities,
		})
		vim.lsp.enable("jdtls")
	end,
}
