local set = vim.opt

set.termguicolors = true
set.background = "dark"
set.signcolumn = "yes"
set.colorcolumn = "120"

set.encoding = "utf-8"
set.showmode = false
set.mouse = "a"
set.iskeyword:append("-")

set.number = true
set.relativenumber = true

set.ruler = true
set.numberwidth = 1

set.clipboard = "unnamedplus"
-- set.clipboard:append("unnamedplus")

set.cursorline = true
-- set.guicursor = ""

-- indentation
set.autoindent = true
set.tabstop = 2
set.shiftwidth = 2
set.softtabstop = 2
set.expandtab = true
set.smartindent = true

set.wrap = true
set.linebreak = true

set.smartcase = true
set.hlsearch = false
set.incsearch = true
set.ignorecase = true

-- set.showcmd = true
set.cmdheight = 1

set.splitright = true
set.splitbelow = true

set.scrolloff = 10
set.sidescrolloff = 4
set.updatetime = 50

set.undodir = os.getenv("HOME") .. "/.cache/nvim/undodir"
set.undofile = true

set.smarttab = true
set.breakindent = true
-- set.backspace = "indent,eol,start"
set.cmdheight = 1

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
