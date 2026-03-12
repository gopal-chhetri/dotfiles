local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Mason setup
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {
        "eslint", "rust_analyzer", "ruff",
        "lua_ls", "bashls", "gopls", "basedpyright",
    },
    automatic_installation = true,
})

-- Server configs
vim.lsp.config("basedpyright", {
    capabilities = capabilities,
    settings = {
        basedpyright = {
            analysis = {
                typeCheckingMode = "standard",
                autoImportCompletions = true,
            },
        },
    },
})

vim.lsp.config("gopls", {
    capabilities = capabilities,
    settings = {
        gopls = {
            completeUnimported = true,
            usePlaceholders = true,
            analyses = { unusedparams = true },
            staticcheck = true,
        },
    },
})

vim.lsp.config("ruff", { capabilities = capabilities })
vim.lsp.config("eslint", { capabilities = capabilities })
vim.lsp.config("rust_analyzer", { capabilities = capabilities })
vim.lsp.config("lua_ls", { capabilities = capabilities })
vim.lsp.config("bashls", { capabilities = capabilities })

-- Enable all servers
vim.lsp.enable({
    "basedpyright", "gopls", "ruff",
    "eslint", "rust_analyzer", "lua_ls", "bashls",
})

-- Keymaps on attach
vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(event)
        local opts = { buffer = event.buf }
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
        vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
        vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, opts)
        vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
        vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
    end,
})

-- nvim-cmp setup
local cmp = require("cmp")
local luasnip = require("luasnip")
require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<CR>"]      = cmp.mapping.confirm({ select = true }),
        ["<Tab>"]     = cmp.mapping.select_next_item(),
        ["<S-Tab>"]   = cmp.mapping.select_prev_item(),
        ["<C-d>"]     = cmp.mapping.scroll_docs(4),
        ["<C-u>"]     = cmp.mapping.scroll_docs(-4),
    }),
    sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "buffer" },
        { name = "path" },
    }),
})
