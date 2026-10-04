return {
	{
		"saghen/blink.cmp",
		opts = {
			keymap = {
				preset = "enter", -- <CR> accepts the selected item
				-- Tab / Shift-Tab cycle through suggestions; when the menu is closed
				-- they jump snippet placeholders, else insert a normal tab
				["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
				["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
			},
		},
	},
}
