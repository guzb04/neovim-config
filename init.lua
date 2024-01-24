local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)
vim.o.termguicolors = true
vim.cmd([[set guifont=0xProto:h12]])

require("vim-options")
require("neovide-options")

require("lazy").setup("plugins")

local opts = {}
