return {
  { "mbbill/undotree" },

  {
    "okuuva/auto-save.nvim",
    opts = {},
  },

  {
    "karb94/neoscroll.nvim",
    opts = {
      mappings = { "<C-u>", "<C-d>", "<C-y>", "<C-e>", "zt", "zz", "zb" },
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
