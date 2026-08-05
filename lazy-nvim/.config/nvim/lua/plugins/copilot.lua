return {
	{
		"github/copilot.vim",
		init = function()
			vim.g.copilot_no_tab_map = true
			vim.g.copilot_assume_mapped = true
		end,
		keys = {
			{ "<C-l>", 'copilot#Accept("<CR>")', mode = "i", expr = true, replace_keycodes = false, desc = "Accept Copilot suggestion" },
			{ "<C-w>", "copilot#AcceptWord()", mode = "i", expr = true, replace_keycodes = false, desc = "Accept Copilot word" },
			{ "<C-j>", "copilot#AcceptLine()", mode = "i", expr = true, replace_keycodes = false, desc = "Accept Copilot line" },
			{ "<C-k>", "copilot#Dismiss()", mode = "i", expr = true, replace_keycodes = false, desc = "Dismiss Copilot suggestion" },
			{ "<C-h>", "copilot#Previous()", mode = "i", expr = true, replace_keycodes = false, desc = "Previous Copilot suggestion" },
			{ "<C-n>", "copilot#Next()", mode = "i", expr = true, replace_keycodes = false, desc = "Next Copilot suggestion" },
		},
	},
}