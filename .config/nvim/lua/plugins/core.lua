---- Plugins Centrais ----
return {
  { "nvim-treesitter/nvim-treesitter" },
  { "neovim/nvim-lspconfig" },
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {
        "<leader>fp",
        function()
          require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
        end,
        desc = "Find Plugin File"
      }
    },
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0
      }
    }
  },
  {
    "folke/persistence.nvim",
    event = "BufReadPre",
    opts = {}
  },
}
