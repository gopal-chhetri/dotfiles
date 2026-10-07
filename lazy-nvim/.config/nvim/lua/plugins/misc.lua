return {
  { "mbbill/undotree" },

  {
    "okuuva/auto-save.nvim",
    opts = {},
  },

  {
    "karb94/neoscroll.nvim",
    opts = {
      -- <C-e> is harpoon's quick menu; <C-d>/<C-u> are remapped to <C-d>zz in keymaps.lua
      mappings = { "<C-y>", "zt", "zz", "zb" },
      hide_cursor = true,
      stop_eof = true,
      respect_scrolloff = false,
      cursor_scrolls_alone = true,
      duration_multiplier = 1.0,
      easing = "linear",
      performance_mode = false,
      ignored_events = { "WinScrolled", "CursorMoved" },
    },
  },
}
