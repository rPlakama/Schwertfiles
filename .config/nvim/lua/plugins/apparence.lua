return {
{
  "karb94/neoscroll.nvim",
  opts = {},
},
{
  "nvim-lualine/lualine.nvim",
  opts = {
    always_show_tabline = false,
    tabline = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = {{ "tabs", mode = 2, modified_icon = "●", unmodified_icon = " " }},
      lualine_x = {},
      lualine_y = {},
      lualine_z = {}
    }
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

