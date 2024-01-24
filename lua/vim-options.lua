
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set number relativenumber")
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>tn", ":tabnew<CR>")
vim.keymap.set("n", "<leader>tc", ":tabclose<CR>")
vim.keymap.set("n", "<leader>tl", ":tabnext<CR>")
vim.keymap.set("n", "<leader>th", ":tabprev<CR>")
vim.keymap.set("n", "<leader>tt", ":tabs<CR>")

vim.keymap.set("n", "<leader>bl", ":bnext<CR>")
vim.keymap.set("n", "<leader>bh", ":bprev<CR>")
vim.keymap.set("n", "<leader>bc", ":bdelete<CR>")

vim.api.nvim_set_keymap(
    "n",
    "<leader>cd",
    [[:lua vim.cmd('cd %:p:h') vim.cmd('echo "Working directory changed to " .. getcwd()')<CR>]],
    { noremap = true, silent = true }
)

vim.cmd(":map <Up> <Nop>")
vim.cmd(":map <Left> <Nop>")
vim.cmd(":map <Right> <Nop>")
vim.cmd(":map <Down> <Nop>")
