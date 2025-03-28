local vsc = require("../vscheck")

local enable = not vsc

return {
	{
		"nvim-lualine/lualine.nvim",
		depenencies = { "nvim-tree/nvim-web-evicons" },
		enabled = enable,
		config = function()
			require("lualine").setup({})
		end,
	},
}
