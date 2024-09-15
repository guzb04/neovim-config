vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number relativenumber")
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>tn", ":tabnew<CR>")
vim.keymap.set("n", "<leader>tc", ":tabclose<CR>")
vim.keymap.set("n", "<leader>tl", ":tabnext<CR>")
vim.keymap.set("n", "<leader>th", ":tabprev<CR>")
vim.keymap.set("n", "<leader>tt", ":tabs<CR>")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<A-,>", ":BufferPrevious<CR>", opts)
vim.keymap.set("n", "<A-.>", ":BufferNext<CR>", opts)
vim.keymap.set("n", "<A-c>", ":BufferClose<CR>", opts)
vim.keymap.set("n", "<A-p>", ":BufferPin<CR>", opts)

vim.keymap.set("n", "<leader>ba", ":BufferCloseAllButCurrentOrPinned<CR>", opts)
vim.keymap.set("n", "<leader>bp", ":BufferCloseAllButPinned<CR>", opts)

vim.keymap.set("n", "<A-1>", ":BufferGoto 1<CR>", opts)
vim.keymap.set("n", "<A-2>", ":BufferGoto 2<CR>", opts)
vim.keymap.set("n", "<A-3>", ":BufferGoto 3<CR>", opts)
vim.keymap.set("n", "<A-4>", ":BufferGoto 4<CR>", opts)
vim.keymap.set("n", "<A-5>", ":BufferGoto 5<CR>", opts)
vim.keymap.set("n", "<A-6>", ":BufferGoto 6<CR>", opts)
vim.keymap.set("n", "<A-7>", ":BufferGoto 7<CR>", opts)
vim.keymap.set("n", "<A-8>", ":BufferGoto 8<CR>", opts)
vim.keymap.set("n", "<A-9>", ":BufferGoto 9<CR>", opts)
vim.keymap.set("n", "<A-0>", ":BufferLast<CR>", opts)

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

vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')
