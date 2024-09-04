local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
	'tsserver',
	'eslint',
	'rust_analyzer',
	'pyright',
    'lua_ls',
    'bashls',
})

lsp.setup()
