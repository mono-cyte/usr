return {
	"folke/flash.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
	},
	event = "VeryLazy",
	---@type Flash.Config
	opts = {},
  -- stylua: ignore
  keys = {
	  -- 进入Flash高亮搜索
    { "<leader>f", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
	-- 选取当前光标相关代码块
    { "<leader>F", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
	-- 在输入d, y 等符号进入等待时, r 可搜跨窗口索跳转, 结合(d,y,w,e,b,0,^,$,j,k,gg,G等motion)执行操作
    { "<leader>r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
	-- 在 visual 和 operator-pending 下, 使用R选取相关代码块
    { "<leader>R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
    { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
  },
	config = function()
		require("flash").setup({})
	end,
}
