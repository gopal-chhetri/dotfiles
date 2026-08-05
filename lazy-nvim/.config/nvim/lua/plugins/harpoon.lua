return {
  {
    "theprimeagen/harpoon",
    branch = "master", -- v1 API — matches your existing keymaps exactly
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = function()
      local mark = require("harpoon.mark")
      local ui = require("harpoon.ui")
      return {
        { "<leader>a", mark.add_file, desc = "Harpoon: add file" },
        { "<C-e>", ui.toggle_quick_menu, desc = "Harpoon: quick menu" },
        {
          "<C-1>",
          function()
            ui.nav_file(1)
          end,
          desc = "Harpoon: file 1",
        },
        {
          "<C-2>",
          function()
            ui.nav_file(2)
          end,
          desc = "Harpoon: file 2",
        },
        {
          "<C-3>",
          function()
            ui.nav_file(3)
          end,
          desc = "Harpoon: file 3",
        },
        {
          "<C-4>",
          function()
            ui.nav_file(4)
          end,
          desc = "Harpoon: file 4",
        },
      }
    end,
  },
}
