local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
    'eslint',
    'rust_analyzer',
    'pyright',
    'lua_ls',
    'bashls',
    'gopls'
})

-- require('lspconfig').gopls.setup({
--     settings = {
--         gopls = {
--             completeUnimported = true,
--             usePlaceholders = true,
--             analyses = {
--               unusedparams = true,
--             },
--         }
--     }
-- })
--
lsp.configure('gopls', {
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

lsp.setup()
