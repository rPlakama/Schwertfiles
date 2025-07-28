return {
{
  "karb94/neoscroll.nvim",
  opts = {},
},
{
  "nvim-lualine/lualine.nvim",
  opts = {
  }
},
  

{
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {
    exclude = {
    filetypes = {
      "help",
      "lspinfo",
      "TelescopePrompt",
      "dashboard"
      },
    },
  },
 },
 {
   "nvim-tree/nvim-web-devicons", 
   opts = {} 
 },
}

