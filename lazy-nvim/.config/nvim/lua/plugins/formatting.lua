-- Replaces nvimtools/none-ls.nvim (archived upstream) + brentyi/isort.vim.
-- conform.nvim is core-bundled by LazyVim; this just overrides which
-- formatters run per filetype, matching your original null-ls sources.
-- Mason auto-installs any formatter named here.
return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        python = { "isort", "black" },
        go = { "goimports", "gofumpt" },
      },
    },
  },
}
