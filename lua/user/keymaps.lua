-- Options
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Save / Quit
keymap("n", "<c-s>", ":w<CR>", opts)
keymap("n", "<c-w>", ":bp<bar>sp<bar>bn<bar>bd<CR>", opts)
keymap("n", "<c-q>", ":qall<CR>", opts)

-- Resize with arrows
keymap("n", "<S-Up>", ":resize +2<CR>", opts)
keymap("n", "<S-Down>", ":resize -2<CR>", opts)
keymap("n", "<S-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<S-Right>", ":vertical resize +2<CR>", opts)

-- NVimTree
keymap("n", "<leader>e", ":NVimTreeToggl<CR>", opts)

-- Telescope
keymap("n", "<c-f>", ":Telescope find_files<CR>", opts)

-- LSP Null LS Format
keymap("n", "<leader>f", ":Format<CR>", opts)

-- Move text up and down (Option-jk)
keymap("n", "∆", "<Esc>:m .+1<CR>==", opts)
keymap("n", "˚", "<Esc>:m .-2<CR>==", opts)

-- Toggle Terminal
keymap("n", "<leader>g", ":lua _LAZYGIT_TOGGLE()<CR>", opts)
keymap("n", "<leader>j", ":lua _NODE_TOGGLE()<CR>", opts)
keymap("n", "<leader>h", ":lua _HTOP_TOGGLE()<CR>", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Save with CTRL-s
keymap("i", "<c-s>", "<ESC>:w<CR>i", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down (Options-jk)
keymap("v", "∆", ":m .+1<CR>==", opts)
keymap("v", "˚", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "∆", ":move '>+1<CR>gv-gv", opts)
keymap("x", "˚", ":move '<-2<CR>gv-gv", opts)
