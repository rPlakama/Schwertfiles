-- Base Configuration --
vim.opt.clipboard = "unnamedplus"
vim.cmd("colorscheme base16-chalk")
vim.opt.termguicolors = true
vim.o.shortmess = 'I'
vim.opt.conceallevel = 0
vim.opt.number = true
vim.opt.relativenumber = false;
vim.opt.scrolloff = 999
vim.opt.fillchars = { eob = '+' }
vim.wo.wrap = true
vim.wo.linebreak = true

-- Apparence --

vim.opt.number = true
vim.opt.winborder = "rounded"
vim.opt.relativenumber = true;
vim.opt.scrolloff = 999
vim.opt.fillchars = { eob = '+' }
vim.opt.cursorline = false
vim.opt.title = true

-- vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
-- vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE" })
-- vim.api.nvim_set_hl(0, "FoldColumn", { bg = "NONE" })
-- vim.api.nvim_set_hl(0, "LineNr", { bg = "NONE" })
-- vim.api.nvim_set_hl(0, "NormalNC", { bg = "NONE"})

-- Indentation --

vim.opt.shiftwidth = 2
vim.opt.smartindent = true
vim.opt.autoindent = true

-- Search Settings --
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Netrw 
vim.g.netrw_banner = 0
vim.g.netrw_browse_split = 4
vim.g.netrw_altv = 1
vim.g.netrw_liststyle= 3


-- ETC --
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.undodir = vim.fn.expand("./vim/undodir")
vim.opt.swapfile = false
vim.opt.autoread = true
