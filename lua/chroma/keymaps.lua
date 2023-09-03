local opts = { noremap = true, silent = true}
local term_opts = { silent = true }

-- shorten function name
local keymap = vim.api.nvim_set_keymap

-- set leader key to space
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- leader commands
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
keymap("n", "<leader>t", ":tabnew<CR>", opts)


-- map ctrl+hjkl to navigate windows
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "<C-Left>", "<C-w>h", opts)
keymap("n", "<C-Down>", "<C-w>j", opts)
keymap("n", "<C-Up>", "<C-w>k", opts)
keymap("n", "<C-Right>", "<C-w>l", opts)

-- map ctrl+shift+hjkl to resize windows
keymap("n", "<A-h>", ":vertical resize -2<CR>", opts)
keymap("n", "<A-j>", ":resize -2<CR>", opts)
keymap("n", "<A-k>", ":resize +2<CR>", opts)
keymap("n", "<A-l>", ":vertical resize +2<CR>", opts)

keymap("n", "<A-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<A-Down>", ":resize -2<CR>", opts)
keymap("n", "<A-Up>", ":resize +2<CR>", opts)
keymap("n", "<A-Right>", ":vertical resize +2<CR>", opts)


-- shift-jk to navigate buffers
keymap("n", "<S-j>", ":bprevious<CR>", opts)
keymap("n", "<S-k>", ":bnext<CR>", opts)

keymap("n", "<S-Down>", ":bprevious<CR>", opts)
keymap("n", "<S-Up>", ":bnext<CR>", opts)


-- shift-hl to navigate tabs
keymap("n", "S-h", ":tabp<CR>", opts)
keymap("n", "S-l", ":tabn<CR>", opts)

keymap("n", "S-Left", ":tabp<CR>", opts)
keymap("n", "S-Right", ":tabn<CR>", opts)


-- stay in visual mode while indenting
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)
