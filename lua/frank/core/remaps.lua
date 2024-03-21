vim.g.mapleader = " "
local set = vim.keymap.set

----------------------------------------------------------------
set('n', '<leader>n', ":NvimTreeToggle <CR>")
----------------------------------------------------------------
set('n', '<leader>x', ":q <CR>")
----------------------------------------------------------------
set('n','C-k',"<C-w>k")
set('n','C-j',"<C-w>j")
set('n','C-l',"<C-w>l")
set('n','C-h',"<C-w>h")
----------------------------------------------------------------
set('n','<leader>-',":split <CR>")
set('n','<leader>=',":vsplit <CR>")
----------------------------------------------------------------
set('n','<ESC>',":nohlsearch <CR>")
----------------------------------------------------------------
