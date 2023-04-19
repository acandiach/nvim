vim.g.mapleader = " "

local map = vim.keymap.set

-- Exit insert mode
map("i", "jk", "<Esc>")

-- save, quit and search file
map("n", "<leader>w", "<cmd>w<CR>")
map("n", "<leader>q", "<cmd>q<CR>")
-- map("n", "<leader>e", "<cmd>Exp<CR>")

-- Move in Buffers
map("n", "<S-h>", ":bp<CR>")
map("n", "<S-l>", ":bn<CR>")
map("n", "<S-d>", ":bdelete<CR>")

-- Move text up and down normal mode
-- map("n", "<A-j>", "<Esc>:m .+1<CR>==")
-- map("n", "<A-k>", "<Esc>:m .-2<CR>==")

-- Move text up and down visual mode
-- map("v", "p", '"_dP')
-- map("v", "<A-j>", ":m .+1<CR>==")
-- map("v", "<A-k>", ":m .-2<CR>==")

--Move text up and down visula mode but Indenting
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- Open vertical Terminal
map("n", "<C-t>", ":vert:split<CR>:terminal<CR>")
-- quit terminal mode
map("t", "<Esc><Esc>", "<C-\\><C-n>")

-- Block arrow keys
map("n", "<up>", "<nop>")
map("n", "<down>", "<nop>")
map("n", "<left>", "<nop>")
map("n", "<right>", "<nop>")

-- Indenting in visual mode
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Resize windows with arrows keys
map("n", "<right>", ":vertical resize -5<CR>")
map("n", "<left>", ":vertical resize +5<CR>")
map("n", "<up>", ":resize -5<CR>")
map("n", "<down>", ":resize +5<CR>")

-- Desactivate or Activate Transparenting
-- map("n", "<leader>ty", ":TransparentToggle<CR>")

-- Faster Scrolling
map("n", "<leader>j", "10j")
map("n", "<leader>k", "10k")

-- Move With Tmux-navigator
-- map("n", "<C-h>", ":TmuxNavigateLeft<CR>")
-- map("n", "<C-j>", ":TmuxNavigateDown<CR>")
-- map("n", "<C-k>", ":TmuxNavigateUp<CR>")
-- map("n", "<C-l>", ":TmuxNavigateRight<CR>")

-- For multicursor

--Basic usage

--select words with Ctrl-s (like Ctrl-d in Sublime Text/VS Code)
--create cursors vertically with Ctrl-Down/Ctrl-Up
--select one character at a time with Shift-Arrows
--press n/N to get next/previous occurrence
--press [/] to select next/previous cursor
--press q to skip current and get next occurrence
--press Q to remove current cursor/selection

-- ReplaceWithRegister:
-- uso yw para copiar la palabra y luego me posiciono en la siguiente palabra
-- y la reemplazo con la anterior palabra usando grw
