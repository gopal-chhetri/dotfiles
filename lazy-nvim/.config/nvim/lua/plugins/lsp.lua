return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        basedpyright = {
          settings = {
            basedpyright = {
              analysis = {
                typeCheckingMode = "standard",
                autoImportCompletions = true,
              },
            },
          },
        },
        gopls = {
          settings = {
            gopls = {
              completeUnimported = true,
              usePlaceholders = true,
              analyses = { unusedparams = true },
              staticcheck = true,
            },
          },
        },
        ruff = {},
        eslint = {},
        rust_analyzer = {},
        lua_ls = {},
        bashls = {},
      },
    },
  },
}
