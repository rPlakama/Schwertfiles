require("config.lazy")
require("config.option")
require("config.theme")
require("config.telescope")
require("config.nvim-tree")
require("config.nvim-treesitter")
require("config.lualine")
require("config.mini-animate")
require("config.lsp")

vim.cmd.colorscheme "catppuccin"
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.api.nvim_create_autocmd({ "VimEnter" }, {
  callback = function(data)
    if vim.fn.isdirectory(data.file) == 1 then
      require("nvim-tree.api").tree.open()
    end
  end,
})

