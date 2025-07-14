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

-- Indentation --

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

-- Search Settings --
vim.opt.ignorecase = true
vim.opt.smartcase = true 
vim.opt.hlsearch = false -- Hightlight Seerch Result
vim.opt.incsearch = true -- Show matchs as type

-- ETC --
vim.opt.backup = false
vim.opt.undofile = true -- Remenber stuff that i did in the file
vim.opt.undodir = vim.fn.expand("~./vim/undodir")
vim.opt.swapfile = false 
vim.opt.autoread = true
vim.opt.guicursor = "n-v-c:block,i-ci-ve:block,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"
