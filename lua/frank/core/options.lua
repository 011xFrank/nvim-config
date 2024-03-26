local opt = vim.opt

opt.fileencoding = "utf-8"
opt.background = "dark"
opt.clipboard = "unnamedplus"
opt.fillchars = { eob = " " }
opt.mouse = "a"
opt.signcolumn = "yes"

opt.hlsearch = false
opt.wrap = false
opt.showmode = false
opt.cursorline = false
opt.ignorecase = true
opt.smartcase = true
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
opt.undofile = true

opt.updatetime = 200
opt.scrolloff = 15
opt.sidescrolloff = 5
opt.laststatus = 3
opt.timeoutlen = 400

-- Indenting
opt.expandtab = true
opt.shiftwidth = 4
opt.smartindent = true
opt.tabstop = 4
opt.softtabstop = 4

-- Numbers
opt.number = true
opt.relativenumber = true
opt.numberwidth = 2
opt.ruler = false
