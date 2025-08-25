return {

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
 { "RRethy/base16-nvim" },
}

