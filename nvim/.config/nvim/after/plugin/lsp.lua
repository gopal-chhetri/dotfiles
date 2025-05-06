local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
	"eslint",
	"rust_analyzer",
	"ruff",
	"lua_ls",
	"bashls",
	"gopls",
})

lsp.configure("gopls", {
	settings = {
		gopls = {
			completeUnimported = true,
			usePlaceholders = true,
			analyses = {
				unusedparams = true,
			},
			staticcheck = true,
		},
	},
})

lsp.configure("ruff", {
	settings = {
		args = {},
	},
})

lsp.setup()
