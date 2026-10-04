-- <C-1>..<C-9> jump to the Nth buffer tab
local keys = {}
for i = 1, 9 do
	table.insert(keys, {
		"<C-" .. i .. ">",
		"<cmd>BufferLineGoToBuffer " .. i .. "<cr>",
		desc = "Go to buffer " .. i,
	})
end

return {
	{
		"akinsho/bufferline.nvim",
		keys = keys,
	},
}
