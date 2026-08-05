return {
  { "tpope/vim-fugitive" },
  {
    "kessejones/git-blame-line.nvim",
    opts = {
      git = {
        default_message = "Not committed yet",
        blame_format = "%an - %ar - %s",
      },
      view = {
        left_padding_size = 5,
        enable_cursor_hold = false,
      },
    },
  },
}
