-- dirs never worth searching (still searches hidden + gitignored files otherwise)
local excluded = {
	".git",
	"node_modules",
	"__pycache__",
	".venv",
	"venv",
	".mypy_cache",
	".pytest_cache",
	".ruff_cache",
	".next",
	".nuxt",
	".cache",
	"dist",
	"build",
	"target",
	"vendor",
	".idea",
	".vscode",
}

local globs = {}
for _, dir in ipairs(excluded) do
	vim.list_extend(globs, { "-g", "!**/" .. dir .. "/**" })
end
for _, ext in ipairs({ "pyc", "pyo", "class", "o", "so", "lock" }) do
	vim.list_extend(globs, { "-g", "!*." .. ext })
end

return {
	{
		"nvim-telescope/telescope.nvim",
		keys = {
			{
				"<leader>ff",
				"<cmd>Telescope find_files<cr>",
				desc = "Find Files",
			},
			{
				"<leader>fg",
				"<cmd>Telescope live_grep<cr>",
				desc = "Live Grep",
			},
			{
				"<leader>fb",
				"<cmd>Telescope buffers<cr>",
				desc = "Find Buffers",
			},
			{
				"<leader>fh",
				"<cmd>Telescope help_tags<cr>",
				desc = "Help Tags",
			},
		},

		opts = {
			defaults = {
				-- catches the same dirs in pickers that don't use rg (oldfiles, LazyVim's extra pickers)
				file_ignore_patterns = (function()
					local pats = {}
					for _, dir in ipairs(excluded) do
						vim.list_extend(pats, { "^" .. vim.pesc(dir) .. "/", "/" .. vim.pesc(dir) .. "/" })
					end
					return pats
				end)(),
				mappings = {
					i = {
						["<C-h>"] = "which_key",
					},
				},
			},

			pickers = {
				find_files = {
					find_command = vim.list_extend({ "rg", "--files", "--hidden", "--no-ignore" }, globs),
				},
				live_grep = {
					additional_args = vim.list_extend({ "--hidden", "--no-ignore" }, globs),
				},
				grep_string = {
					additional_args = vim.list_extend({ "--hidden", "--no-ignore" }, globs),
				},
			},
		},
	},
}
