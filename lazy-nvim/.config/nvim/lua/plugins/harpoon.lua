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
          "<leader>1",
          function()
            ui.nav_file(1)
          end,
          desc = "Harpoon: file 1",
        },
        {
          "<leader>2",
          function()
            ui.nav_file(2)
          end,
          desc = "Harpoon: file 2",
        },
        {
          "<leader>3",
          function()
            ui.nav_file(3)
          end,
          desc = "Harpoon: file 3",
        },
        {
          "<leader>4",
          function()
            ui.nav_file(4)
          end,
          desc = "Harpoon: file 4",
        },
      }
    end,
  },
}
