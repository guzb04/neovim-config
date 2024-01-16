vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set number relativenumber")
vim.g.mapleader = " "


vim.keymap.set('n', '<leader>tn', ':tabnew<CR>')
vim.keymap.set('n', '<leader>tc', ':tabclose<CR>')
vim.keymap.set('n', '<leader>tl', ':tabnext<CR>')
vim.keymap.set('n', '<leader>th', ':tabprev<CR>')
vim.keymap.set('n', '<leader>tt', ':tabs<CR>')

vim.keymap.set('n', '<leader>e', ':Explore<CR>')

vim.cmd(':map <Up> <Nop>')
vim.cmd(':map <Left> <Nop>')
vim.cmd(':map <Right> <Nop>')
vim.cmd(':map <Down> <Nop>')
vim.cmd[[
    hi clear NonText
    hi link NonText Normal
]]
