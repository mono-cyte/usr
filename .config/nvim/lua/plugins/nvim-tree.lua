local vsc = require("../vscheck")

-- 扩展性
local enable = not vsc

return {
	{
		"nvim-tree/nvim-tree.lua",
		event = "VeryLazy",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		enabled = enable,
		config = function()
			require("nvim-tree").setup({})
		end,
	},
}
