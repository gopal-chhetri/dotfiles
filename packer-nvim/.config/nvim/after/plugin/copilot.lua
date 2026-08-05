vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = true

-- Custom key mappings
vim.keymap.set("i", "<C-l>", 'copilot#Accept("<CR>")', {
  expr = true,
  replace_keycodes = false,
  desc = "Accept Copilot suggestion"
})

vim.keymap.set("i", "<C-w>", 'copilot#AcceptWord()', {
  expr = true,
  replace_keycodes = false,
  desc = "Accept Copilot word"
})

vim.keymap.set("i", "<C-j>", 'copilot#AcceptLine()', {
  expr = true,
  replace_keycodes = false,
  desc = "Accept Copilot line"
})

vim.keymap.set("i", "<C-k>", 'copilot#Dismiss()', {
  expr = true,
  replace_keycodes = false,
  desc = "Dismiss Copilot suggestion"
})

vim.keymap.set("i", "<C-h>", 'copilot#Previous()', {
  expr = true,
  replace_keycodes = false,
  desc = "Previous Copilot suggestion"
})

vim.keymap.set("i", "<C-n>", 'copilot#Next()', {
  expr = true,
  replace_keycodes = false,
  desc = "Next Copilot suggestion"
})
