local set = vim.opt

set.clipboard = "unnamedplus"

set.expandtab = true
set.shiftwidth = 2
set.softtabstop = 2
set.tabstop = 2

set.fillchars = { eob = " ", stl = "─", stlnc = "─" }
set.number = true
set.relativenumber = true
set.signcolumn = "yes"
set.colorcolumn = "80"

set.hlsearch = true
set.ignorecase = true
set.inccommand = "split"
set.incsearch = true
set.smartcase = true

-- set.background = dark
set.cursorline = true
set.laststatus = 3
set.scrolloff = 999
set.statusline = "[%{toupper(mode())}][%{toupper(&fileencoding != '' ? &fileencoding : &encoding)}]%=%t%=[%l,%c]"
set.termguicolors = true
set.wrap = false

set.splitbelow = true
set.splitright = true
