local vsc = require("../../vscheck")

local enable = not vsc

return {
	{
		"sainnhe/everforest",
		enabled = enable,
		config = function()
			vim.cmd.colorscheme("everforest")
		end,
	},
}
