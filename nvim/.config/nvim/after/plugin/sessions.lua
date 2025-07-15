vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

require("auto-session").setup({
    log_level = "info",
    auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
    auto_session_enable_last_session = true,
    auto_save_enabled = true,
    auto_restore_enabled = true,
    pre_save_cmds = { "Neotree close" },
    session_lens = {
        buftypes_to_ignore = {},
        load_on_setup = true,
        theme_conf = { border = true },
        path_display = { "shorten" },
        previewer = true,
    },
})

-- Fixed keymaps
vim.keymap.set("n", "<leader>ss", function()
    vim.cmd("SessionSave")
end, {
    desc = "Save current session",
})

vim.keymap.set("n", "<leader>sl", function()
    require("auto-session.session-lens").search_session()
end, {
    desc = "Search sessions",
})

vim.keymap.set("n", "<leader>sd", function()
    vim.cmd("SessionDelete")
end, {
    desc = "Delete current session",
})
