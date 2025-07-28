require ("plugins.theme")

-- Base Configuration --

vim.opt.clipboard = "unnamedplus"
vim.opt.termguicolors = true
vim.o.shortmess = 'I'
vim.opt.conceallevel = 1
vim.opt.number = true
vim.opt.relativenumber = true;
vim.opt.scrolloff = 999
vim.opt.fillchars = { eob = '+' }

-- Apparence --

vim.opt.number = true
vim.opt.relativenumber = true;
vim.opt.scrolloff = 999
vim.opt.fillchars = { eob = '+' }
vim.opt.cursorline = true
vim.cmd('colorscheme base16-chalk')
vim.opt.title = false

-- Indentation --

vim.opt.shiftwidth = 2
vim.opt.smartindent = true
vim.opt.autoindent = true

-- Search Settings --
vim.opt.ignorecase = true
vim.opt.smartcase = true 
vim.opt.hlsearch = false -- Hightlight Seerch Result
vim.opt.incsearch = true -- Show matchs as type

-- Netrw 
vim.g.netrw_banner = 0
vim.g.netrw_browse_split = 4
vim.g.netrw_altv = 1
vim.g.netrw_liststyle= 3


-- ETC --
vim.opt.backup = false
vim.opt.undofile = true -- Remenber stuff that i did in the file
vim.opt.undodir = vim.fn.expand("~./vim/undodir")
vim.opt.swapfile = false 
vim.opt.autoread = true
