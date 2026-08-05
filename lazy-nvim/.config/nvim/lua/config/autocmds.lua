-- LazyVim ships a set of default autocmds already (see LazyVim.config.autocmds
-- for the full baseline). These are additions on top of that.

vim.api.nvim_create_autocmd("CursorMoved", {
	group = vim.api.nvim_create_augroup("switchScrolloffTopBottom", { clear = true }),
	callback = function()
		if vim.fn.winline() < vim.o.lines / 2 then
			vim.opt_local.scrolloff = 0
		else
			vim.opt_local.scrolloff = 5
		end
	end,
})

-- was a stray autocmd sitting inside lua/soy/packer.lua, unrelated to any
-- specific `use()` call — moved here since it's not plugin-spec content
vim.api.nvim_create_autocmd("FileType", {
	pattern = "neo-tree",
	callback = function()
		vim.cmd("setlocal signcolumn=no")
	end,
})

-- LSP keymaps: LazyVim already sets its own LspAttach keymaps (gd, gD, gr, K,
-- <leader>cr for rename, <leader>ca, <leader>cf for format, [d/]d). Rather than
-- silently switching you onto those key names, this keeps your exact original
-- binds (<leader>rn) alongside them — both will work, nothing lost.
vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("soy-lsp-keymaps", { clear = true }),
	callback = function(event)
		local opts = { buffer = event.buf }
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
		vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
		vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
		vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
		vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
		vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
		vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
		-- vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, opts)
		vim.keymap.set("n", "[d", function()
			vim.diagnostic.jump({ count = -1, float = true })
		end, opts)

		vim.keymap.set("n", "]d", function()
			vim.diagnostic.jump({ count = 1, float = true })
		end, opts)
	end,
})

require("config.diagnostics")
