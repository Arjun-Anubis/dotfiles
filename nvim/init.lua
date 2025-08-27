-- # Plugin Manager
-- I will be using lazy.nvim which can be found at
local link = "https://github.com/folke/lazy.nvim"

-- This is where lazy will be cloned to
local path_to_lazy = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- If the directory at that location doesn't already exist (using fstat)
if not vim.loop.fs_stat(path_to_lazy) then
	vim.fn.system(
	{
		"git", "clone", "--filter=blob:none", link, path_to_lazy
	})
end

-- Using the method prepend to add path_to_lazy to path
vim.opt.rtp:prepend(path_to_lazy)


-- Loading my own configs

-- Loads ./lua/options.lua
require("options")


-- Loads keybinds
require("keybinds")

-- Call the setup of plugins from the lazy module, which can be found at path_to_lazy
require("lazy").setup("plugins")
