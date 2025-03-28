local vsc = require("../../vscheck")

local enable = not vsc

return {
	{
		"folke/tokyonight.nvim",
		enabled = enable,
		config = function()
			vim.cmd.colorscheme("tokyonight")
		end,
	},
}
