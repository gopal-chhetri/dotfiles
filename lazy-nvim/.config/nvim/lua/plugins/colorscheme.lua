return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		opts = {
			flavour = "mocha",
			background = {
				light = "latte",
				dark = "mocha",
			},
			transparent_background = false,
			show_end_of_buffer = false,
			term_colors = false,
			dim_inactive = {
				enabled = false,
				shade = "dark",
				percentage = 0.15,
			},
			no_italic = false,
			no_bold = false,
			no_underline = false,
			styles = {
				comments = { "italic" },
				conditionals = { "italic" },
				loops = {},
				functions = {},
				keywords = {},
				strings = {},
				variables = {},
				numbers = {},
				booleans = {},
				properties = {},
				types = {},
				operators = {},
			},
			color_overrides = {},
			custom_highlights = {},
			-- CHANGED from original: cmp -> blink_cmp, nvimtree -> neotree,
			-- telescope -> fzf. Your original set integrations for plugins you're
			-- no longer running (nvim-cmp, nvim-tree); this points them at what
			-- you actually chose.
			integrations = {
				blink_cmp = true,
				gitsigns = true,
				neotree = true,
				fzf = true,
				treesitter = true,
				notify = false,
				mini = {
					enabled = true,
					indentscope_color = "",
				},
			},
		},
	},
	-- tells LazyVim to activate this as the startup colorscheme
	{ "LazyVim/LazyVim", opts = { colorscheme = "catppuccin" } },
}
