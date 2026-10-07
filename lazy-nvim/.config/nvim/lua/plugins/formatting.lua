-- Replaces nvimtools/none-ls.nvim (archived upstream) + brentyi/isort.vim.
-- conform.nvim is core-bundled by LazyVim; this just overrides which
-- formatters run per filetype, matching your original null-ls sources.
-- conform doesn't install formatters, so they're added to mason below.
return {
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "stylua", "isort", "black", "goimports", "gofumpt" })
    end,
  },
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
