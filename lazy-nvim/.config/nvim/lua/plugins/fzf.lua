return {
	{
		"ibhagwan/fzf-lua",
		keys = {
			{
				"<leader>ff",
				"<cmd>FzfLua files<cr>",
				desc = "Find Files",
			},
			{
				"<leader>fg",
				"<cmd>FzfLua live_grep --hidden<cr>",
				desc = "Live Grep",
			},
			{
				"<leader>fb",
				"<cmd>FzfLua buffers<cr>",
				desc = "Find Buffers",
			},
			{
				"<leader>fh",
				"<cmd>FzfLua helptags<cr>",
				desc = "Help Tags",
			},
		},
		opts = {
			files = {
				cmd = "rg --files --hidden --no-ignore -g '!.git'",
				prompt = "Find Files ",
			},
			grep = {
				rg_opts = "--column --line-number --no-heading --color=never --smart-case --hidden --no-ignore -g '!.git'",
			},
		},
	},
}
