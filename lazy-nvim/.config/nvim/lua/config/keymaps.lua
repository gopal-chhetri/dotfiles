vim.g.mapleader = " "

vim.keymap.set("n", "<leader>h", vim.cmd.Ex)

-- Move lines up and down
vim.keymap.set("n", "<C-S-k>", "<cmd>m -2<CR>")
vim.keymap.set("n", "<C-S-j>", "<cmd>m +1<CR>")

-- Move highlighted lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Move up and down without moving the cursor
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Yank from vim and save it to clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<C-S-y>", [["+y]])
vim.keymap.set("n", "<C-S>Y", [["+Y]])

-- Make the current file executable (does chmod +x)
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Change vim buffer width
vim.keymap.set("n", "<C-,>", "<C-w>>")
vim.keymap.set("n", "<C-.>", "<C-w><")
vim.keymap.set("n", "<C-/>", "<C-w>=")

-- fugitive (from after/plugin/fugitive.lua)
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

-- git-blame-line (from after/plugin/git-blame-line.lua)
vim.keymap.set("n", "<leader>gb", vim.cmd.GitBlameLineToggle)

-- manual format bind (from after/plugin/null-ls.lua) — kept alongside the
vim.keymap.set("n", "<leader>ft", vim.lsp.buf.format, {})

-- move between tabs
vim.keymap.set("n", "<C-l>", "<cmd>bnext<cr>", { desc = "Next Tab" })
vim.keymap.set("n", "<C-h>", "<cmd>bprev<cr>", { desc = "Prev Tab" })
