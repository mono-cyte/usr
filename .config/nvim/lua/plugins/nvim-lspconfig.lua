local vsc = require("../vscheck")

-- 扩展性
local enable = not vsc

local capabilities = {
	{
		textDocument = {
			completion = {
				completionItem = {
					commitCharactersSupport = true,
					deprecatedSupport = true,
					insertReplaceSupport = true,
					insertTextModeSupport = { valueSet = { 1, 2 } },
					labelDetailsSupport = true,
					preselectSupport = true,
					resolveSupport = {
						properties = {
							"documentation",
							"additionalTextEdits",
							"insertTextFormat",
							"insertTextMode",
							"command",
						},
					},
					snippetSupport = true,
					tagSupport = { valueSet = { 1 } },
					completionList = {
						itemDefaults = { "commitCharacters", "editRange", "insertTextFormat", "insertTextMode", "data" },
					},
					contextSupport = true,
					dynamicRegistration = false,
					insertTextMode = 1,
				},
			},
		},
	},
}

return {
	{
		"neovim/nvim-lspconfig",
		enabled = enable,
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.clangd.setup({
				capabilities = capabilities,
				cmd = { "clangd" },
				filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
			})
		end,
	},
}
