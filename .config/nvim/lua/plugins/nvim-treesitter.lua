-- flash 插件需要此代码树支持

return {
	"nvim-treesitter/nvim-treesitter",
	event = "VeryLazy",
	run = ":TSUpdate",
	config = function()
		require("nvim-treesitter").setup({
			ensure_installed = {
				"c",
				"cpp",
				"lua",
				"python",
				"make",
				"cmake",
				"html",
				"xml",
				"yaml",
				"css",
				"vim",
				"lua",
				"javascript",
				"typescript",
				"git",
				"markdown",
				"json",
				"asm",
			},
			sync_install = true,
			auto_install = true,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
		})
	end,
}
