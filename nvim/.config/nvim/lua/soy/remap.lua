vim.g.mapleader = " "
vim.keymap.set('n', '<leader>h', vim.cmd.Ex)

-- Move lines up and down
vim.keymap.set('n', '<C-S-Up>', '<cmd>m -2<CR>')
vim.keymap.set('n', '<C-S-Down>', '<cmd>m +1<CR>')

-- Move highlighted lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Move up and down without moving the cursor
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Yank from vim and save it to clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Make the current file executable (does chmod +x)
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- keybind for autosave toggle
-- vim.api.nvim_set_keymap("n", "<leader>n", ":ASToggle<CR>", {})
