return {
	{
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			vim.list_extend(opts.ensure_installed, {
				"c",
				"lua",
				"vim",
				"python",
				"rust",
				"bash",
				"javascript",
				"typescript",
			})
		end,
	},

	{
		"nvim-treesitter/nvim-treesitter-context",
		event = "VeryLazy",
		opts = {
			max_lines = 0,
			trim_scope = "outer",
			patterns = {
				default = { "class", "function", "method" },
			},
			mode = "cursor",
			zindex = 20,
		},
	},
}
