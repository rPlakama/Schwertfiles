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
	event = "VeryLazy",
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

	  dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
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
                           ~RBØØÆÆEÆÃËœðÜŸ§šÞë9&x§à4õ6™½%z£©JcƒIî{‘´`¨’‚        `¸                                                                                                                                                                  
                            äÆÆÆÆÆÆŒHÔÐQRâÇDûFDOõšdýš9ðÆg¥¾ÓŠeƒsss)²*ut„|!–’…`                                                                                                                                                                      
                            ‹ÆÆÆÆÆÆÆÆÄœ8dðbFð¥Fe3oµÇùLTàgÄk3&£ÍYeÝž&@Ï‰c[~÷¡‚‘;’   `                                                                                                                                                                
                             @ÆÆÆÆÆÆÆMŠŽAŠmFñøÙýžL3¢oƒ¤@úUUóµý9oï[(î34ú½×¿”‚‘´`                                                                                                                                                                     
                              ÛÆÆÆÆÆÆÆÆÆÆæþÕáñâÙÏ¿*ï<ï<ì‡a®s!còo«÷¯¡¿¤ctr¬³` ´`‚`                                                                                                                                                                   
                              ˜ÆÆÆÆÆÆÆÆÆÆÊQæm9Ÿúl)†l>}×iƒ0yÎjjì+(—‘‚¯nÌ7÷:`                                                                                                                                                                         
                               )ÆÆÆÆÆÆÆÆÆÆÊHBR8Fh±íî‡t}/l£¢IJoì(|¦;’²^¿*…                                                                                                                                                                           
                                5ÆÆÆÆÆÆÆÆÆÆêÜ8méÔXÕP4£uj7?î£çÌ@%×+ª¹¨`´`                      ”¸                                                                                                                                                    
                                 ôÆÆÆÆÆÆÆÆËÐøéëÓTÓXê€TÍ™çyáûÍ©&&0u<¹``  `                                                                                                                                                                           
                                  £ÆÆÆÆÆÆÆ€äbñøœÔpØÃEÔ8øëÓøÛåFÎaùa©£v¹```                                                                                                                                                                           
                                   JÆÆÆÆÆÆÆðhhåpNddÛXWÆÃHQEÂBÔFxxú™Sd™“¸…¨                                               `                                                                                                                          
                                    «ÆÆÆÆÆÆÆQÚðKÅXB€U©äâbUøÞÝûÝàÇSžžš®±{¹¸`        ``     `                                                                                                                                                         
                                      ÃÆÆÆÆÆêøÿŠÆþéÇ5O4ä©Ì£óç9äÇûû®kó@×º;¸ˆ`       `                                        ‚                                                                                                                       
                                       ÒÆÆÆæBWâÇÇÙPùú0¤lrrjóx44üññà½|‘›”¦³… `      `´`                                                                                                                                                              
                                        >ÆÆÆRœÆW¶bFk2öíïƒr111ïv?ze@î»²‹³—¬­¨` ``    ``    `’                    ‚˜¸……   ˜;:                    ˆ ¨°›’                                                                                               
                                          ¶ÆÆÆÆÆËRÛpÙÎC¤jîIƒIco1ìi¢V½ì>)¯ºˆ¨¨``     `’;º~»(«¡`´;                ’ˆ     ¨‚˜­°˜`          `   ¨­›:’¯ª                                                                                                 
                                           |ÆÆÆÆÆÆÆÆWÖhw½îII7íƒ¤îíoüfLoi)î/º³–¨```‘˜:„/(×víJJJI></­ `   °)*­¨` `°²::;‚‚’’:ˆ:¹·``     ˜º”ªª²»?»«<c÷                                                                                                  
                                             lÆÆÆÆÆÆÆÆÓ§µVJo<ïí1lt¤±üûàôó£µí³~‘`` `‹­“»írlöüf¾5µ§£n¢ö¤lCoîIv¿|¦—!(¡«í[ª¯°^“„«„‘¸ˆ…¨‘¦>í†í*+ï‡u×•                                                                                                    
                                               ±ÆÆÆÆÆÆÛUšäôsî*1¢ï†í‡™ÒÜ®0w¾Ì|²[y6O&£Í1[I0CtƒwûéâœÐ8ÓP®¾0½1ï?»•¡7vìi1cr1îc>)—ª^~°°~•?í‡ÌJƒçaaõÏ                                                                                                      
                                                 ‰ÆÆÆÆÆWâá9&@ì{{*¿<jCeS9høãáá8ðpß¶èèÜáÝÓEN€Þ88ÔêEœdÒÇ§Sçô¢={»!¬/?vJ¢%t¤z¢3L@ƒt==î¢ó&ÇÞ9aU¥Ó£                                                                                                        
                                                   jMÆÆÆÆÆÐøÜà±óÓŽÁÈÆÆÆÆÆÆÆÆÆÆÆÆÂMÆÆÆÆÆNÕÔâÕœqqÔpÐpéF¥åbfÏV©3@ƒ¢VLç£LYówµ5yµyÎ5ŸÞéÜýÿApâÜ¾                                                                                                          
                                                      ZÆÆÆÆêdXBÄÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÂ€RÛëñ$HÐKBŒÆÆÅRÐmdëÖëpÖÒÓÝ6ÎyS§ñbhP®Ÿhbâ8REÁœþÅQt                                                                                                            
                                                        ¸ZÆÆÆMNÆÆÆÆÆÆÆÆWýy5f2©ôÇÕœœMÊMMEÀÔÕXEÑÆÆÆÆÆÑÂÁKægp¥b$Gÿd$ÜãâD§Ùðdÿ8ÜmœÐê€€Áê0                                                                                                               
                                                           ‹äÆÆÆÃRÔÁþÆÆÆš£CÌÍÍÏÏúôwTU®dqŽXBMÆÆÆÆÆÆMÆNæÀÄHgÔÙÜRœRq€ÐqKÐøðê€åPmKNEåo                                                                                                                  
                                                              ‹ñÆÆNâNÆÆÆËÝ£sCön3±YüO®9àÛÆÆØØÆÆÆÆÆÆÆÆÆÊWÅQMÅÄœgþgAédÜÞGœWMÂŒÃãú¦                                                                                                                     
                                                                  }ÓÆÆÆÆÆÆÆæ§£C¢n±£ySŸ6ÙÅÈQÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÑBgŽŠgŒŒÆÆÆÆÆß½                                                                                                                         
                                                                       îÓÆÆÆÆÆHðÖSZë$qMÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆQpŽÆÆÆÈÚç›                                                                                                                             
                                                                             v§EÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÆÕPƒ                                                                                                                                   
                                                                                     ·¬Ìõ§ÓÙ8p¶âÕéÒDÝau¬                                                                                                                                            
                                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                                    

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

