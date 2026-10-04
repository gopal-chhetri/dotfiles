return {
	{
		"folke/which-key.nvim",
		opts = {
			-- never auto-show the popup for key sequences (<leader> etc.);
			-- plugin popups (registers ", marks `, spelling z=) still show instantly.
			-- <leader>? still opens it on demand.
			delay = function(ctx)
				return ctx.plugin and 0 or 1e9
			end,
		},
	},
}
