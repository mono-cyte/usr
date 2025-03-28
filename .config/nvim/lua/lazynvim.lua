-- 1. 确定lazynvim路径(如下为: ~/.local/nvim-data/lazy/lazy.nvim)
local lazynvimPath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazynvimPath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"git@github.com:folke/lazy.nvim.git",
		"--branch=main", -- latest stable release
		lazynvimPath,
	})
end
--
-- 2. 将 lazynvimPath 设置为运行时路径
-- rtp（runtime path）
-- nvim进行路径搜索的时候，除已有的路径，还会从prepend的路径中查找
-- 否则，下面 require("lazy") 是找不到的
vim.opt.rtp:prepend(lazynvimPath)

-- 3. 加载lazy.nvim模块
local lazy = require("lazy")
local loadedList = require("loadedList")
--lazy.setup("plugins")
lazy.setup(loadedList)
