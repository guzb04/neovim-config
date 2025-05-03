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
vim.g.loaded_python3_provider = 0

require("vim-options")
require("neovide-options")

require("lazy").setup("plugins")
if vim.api.nvim_exec('augroup AutoOpenJson', true) == '' then
  vim.cmd([[
    autocmd!
    autocmd VimEnter * if argc() > 0 && len(argv()) > 0 | execute 'edit' argv()[0] | endif
  augroup END
  ]])
end

vim.cmd([[
  highlight CursorLineNr guifg=#98971A guibg=NONE ctermfg=Red ctermbg=NONE gui=bold
  set cursorlineopt=number  " Only highlight line number
  set cursorline
]])

vim.cmd[[set guifont=Hack\ Nerd\ Font\ Mono:h12]]
local opts = {}
