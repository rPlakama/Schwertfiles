---- Interface ----
return {
  -- Lualine (statusline)
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "echasnovski/mini.nvim" }
  },

  -- Bufferline (tabs/bar)
  {
    "romgrk/barbar.nvim",
    dependencies = {
      "lewis6991/gitsigns.nvim",
      "nvim-tree/nvim-web-devicons"
    }
  },

  -- File tree
  {
    "nvim-tree/nvim-tree.lua",
    cmd = { "NvimTreeToggle", "NvimTreeFocus" },
    opts = function() end
  },

  -- Noice (command UI, messages, LSP UI)
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      lsp = {
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true
        }
      },
      routes = {
        {
          filter = {
            event = "msg_show",
            any = {
              { find = "%d+L, %d+B" },
              { find = "; after #%d+" },
              { find = "; before #%d+" }
            }
          },
          view = "mini"
        }
      },
      presets = {
        bottom_search = true,
        command_palette = true,
        long_message_to_split = true
      }
    },
    keys = {
      { "<leader>sn", "", desc = "+noice" },
      { "<S-Enter>", function() require("noice").redirect(vim.fn.getcmdline()) end, mode = "c", desc = "Redirect Cmdline" },
      { "<leader>snl", function() require("noice").cmd("last") end, desc = "Noice Last Message" },
      { "<leader>snh", function() require("noice").cmd("history") end, desc = "Noice History" },
      { "<leader>sna", function() require("noice").cmd("all") end, desc = "Noice All" },
      { "<leader>snd", function() require("noice").cmd("dismiss") end, desc = "Dismiss All" },
      { "<leader>snt", function() require("noice").cmd("pick") end, desc = "Noice Picker" },
      { "<c-f>", function() if not require("noice.lsp").scroll(4) then return "<c-f>" end end, expr = true, silent = true, mode = { "i", "n", "s" } },
      { "<c-b>", function() if not require("noice.lsp").scroll(-4) then return "<c-b>" end end, expr = true, silent = true, mode = { "i", "n", "s" } }
    },
    config = function(_, opts)
      if vim.o.filetype == "lazy" then
        vim.cmd([[messages clear]])
      end
      require("noice").setup(opts)
    end
  },

  -- Smear cursor effect
  {
    "sphamba/smear-cursor.nvim",
    opts = {}
  },

  -- Which-key (keymap hints)
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {},
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps"
      }
    }
  },

  -- Dashboard and startup screen
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          pick = function(cmd, opts)
            return LazyVim.pick(cmd, opts)()
          end,
          header = [[
    •   
┏┓┓┏┓┏┳┓
┛┗┗┛┗┛┗┗
          ]],
          keys = {
            {
              icon = "󱝩 ",
              key = "f",
              desc = "Find File",
              action = ":lua require('telescope.builtin').find_files({ cwd = vim.fn.expand('~'), hidden = true, layout_config = { width = 0.8 }, previewer = false })"
            },
            {
              icon = "󱝏 ",
              key = "r",
              desc = "Recent Files",
              action = ":lua Snacks.dashboard.pick('oldfiles')"
            },
            { icon = "󱝯 ", key = "s", desc = "Restore Session", section = "session" },
            { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" }
          }
        }
      }
    }
  },

  -- Theme
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000
  },

  -- Mini.nvim (multiple mini-plugins)
  {
    "echasnovski/mini.nvim",
    version = false
  },

  -- plugins/terminal.lua
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      open_mapping = [[<C-\>]],
      direction = "float", -- open as floating window
      float_opts = {
        border = "curved",
        winblend = 0,
      },
    },
  },


}

