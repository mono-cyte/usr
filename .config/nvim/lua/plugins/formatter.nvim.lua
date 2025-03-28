local vsc = require("../vscheck")

local enable = not vsc

return {
	"mhartington/formatter.nvim",
	enabled = enable,
	event = "VeryLazy",
	config = function()
		require("formatter").setup({
			vim.keymap.set({ "n", "v" }, "gq", ":Format<CR>", { noremap = true, silent = true }),
			logging = false,
			log_level = vim.log.levels.WARN,
			filetype = {
				c = {
					require("formatter.filetypes.c").clangformat,
					function()
						return {
							exe = "clang-format",
							args = {
								"-style={IndentWidth: 4, TabWidth: 4, AccessModifierOffset: -4, UseTab: Always, PointerAlignment: Left, ColumnLimit: 0, SortIncludes: Never, BreakConstructorInitializers: AfterColon, BreakBeforeBraces: Attach, BraceWrapping: {}, BinPackArguments: false, BinPackParameters: false, AllowAllArgumentsOnNextLine: false, AllowAllParametersOfDeclarationOnNextLine: false, PenaltyBreakBeforeFirstCallParameter: 100}",
							},
							stdin = true,
						}
					end,
				},
				lua = {
					require("formatter.filetypes.lua").stylua,
					function()
						return {
							exe = "stylua",
							args = {
								"--search-parent-directories",
								"--stdin-filepath",
								util.escape_path(util.get_current_buffer_file_path()),
								"--",
								"-",
							},
							stdin = true,
						}
					end,
				},
				["*"] = {},
			},
		})
	end,
}
