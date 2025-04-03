return {
	"kylechui/nvim-surround",
	event = "VeryLazy",
	opts = {
		-- Keymaps configuration
		keymaps = {
			insert = "<C-g>s", -- Inserts delimiter pairs at cursor position (requires preceding space)
			insert_line = "<C-g>S", --analogous to <C-g>s, but adds the delimiter pair on new lines(no preceding space)
			normal = "ys",
			normal_cur = "yss",
			normal_line = "yS",
			normal_cur_line = "ySS",
			visual = "S",
			visual_line = "gS",
			delete = "ds",
			change = "cs",
			change_line = "cS",
		},
	},
	highlight = {
		duration = 50, -- Highlight duration in milliseconds (0 means no highlight)
	},
	move_cursor = "sticky", -- Can be "begin" or false
	config = function()
		require("nvim-surround").setup({})
	end,
}
