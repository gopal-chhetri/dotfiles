-- LazyVim sets sensible option defaults already; these override/extend them.

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
-- vim.opt.cmdheight = 1
vim.opt.textwidth = 0
vim.opt.formatoptions:remove({ "t", "c" })
vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
-- undodir left at nvim's default (stdpath("state")/undo); vim's undo files are incompatible
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 200

vim.o.guifont = "JetBrainsMono Nerd Font Mono:h12:#h-slight"

vim.cmd("set mousescroll=hor:10")
