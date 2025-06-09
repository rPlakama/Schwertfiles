{...}: {
  programs.nixvim = {
    enable = true;
    opts = {
      conceallevel = 2;
      clipboard = "unnamedplus";
      shortmess = "filnxtToOFSI";
    };

    plugins = {
      # Plugins
      markdown-preview.enable = true;
      telescope.enable = true;
      obsidian.enable = true;
      neo-tree.enable = true;
      which-key.enable = true;
      treesitter.enable = true;
      smear-cursor.enable = true;

      # LSP

      lsp.enable = true;
      blink-cmp = {
        enable = true;
      };
      lsp.servers = {
        rust_analyzer = {
          enable = true;
          installRustc = false;
          installCargo = false;
        };
        nixd.enable = true;
      };
      # Obsidian

      obsidian.settings = {
        new_notes_location = "current_dir";
        workspaces = [
          {
            name = "Livro";
            path = "~/Dropbox/vaults/Estudos";
          }
          {
            name = "Escritas";
            path = "~/Dropbox/vaults/Livro";
          }
        ];
      };
      transparent = {
        enable = true;
        autoLoad = true;
      };
      mini = {
        enable = true;
        mockDevIcons = true;
        modules = {
          icons.style = "glyph";
          statusline.enable = true;
          git.enable = true;
          diff.enable = true;
        };
      };
    };
    # keymaps
    keymaps = [
      {
        action = "<cmd>:Telescope find_files find_command=rg,--ignore,--hidden,--files<CR>";
        key = "<C-f>";
        options.silent = true;
      }
      {
        action = "<cmd>:Telescope oldfiles<CR>";
        key = "<M-f>";
        options.silent = true;
      }
      {
        action = "<cmd>:ObsidianQuickSwitch<CR>";
        key = "<M-b>";
        options.silent = true;
      }
      {
        action = "<cmd>:Neotree reveal<CR>";
        key = "<C-n>";
        options.silent = true;
      }
      {
        action = "<cmd>:set spell spelllang=pt | echo 'Portuguese Enabled'<CR>";
        key = "<C-1>";
      }
      {
        action = "<cmd>:set spell spelllang=en_us | echo 'English Enabled'<CR>";
        key = "<C-2>";
      }
      {
        action = "<cmd>:set nospell | echo 'Spell Disabled'<CR>";
        key = "<C-3>";
      }
      {
        action = "<cmd>:tabnext 1 | echo 'Tab 1'<CR>";
        key = "<M-1>";
      }
      {
        action = "<cmd>:tabnext 2 | echo 'Tab 2'<CR>";
        key = "<M-2>";
      }
      {
        action = "<cmd>:tabnext 3 | echo 'Tab 3'<CR>";
        key = "<M-3>";
      }
      {
        action = "<cmd>:tabnext 4 | echo 'Tab 4'<CR>";
        key = "<M-4>";
      }
      {
        action = "<cmd>:tabnext 5 | echo 'Tab 5'<CR>";
        key = "<M-5>";
      }
      {
        action = "<cmd>:tabnext 6 | echo 'Tab 6'<CR>";
        key = "<M-6>";
      }
      {
        action = "<cmd>:tabnext 7 | echo 'Tab 7'<CR>";
        key = "<M-7>";
      }
      {
        action = "<cmd>:tabnext 8 | echo 'Tab 8'<CR>";
        key = "<M-8>";
      }
      {
        action = "<cmd>:tabnext 9 | echo 'Tab 9'<CR>";
        key = "<M-9>";
      }
      {
        action = "<cmd>:tabnext 10 | echo 'Tab 10'<CR>";
        key = "<M-0>";
      }
      {
        action = "<cmd>:tabnew | echo 'New Tab'<CR>";
	key = "<S-M-T>";
      }
      {
      	action = "<cmd>:tabclose | echo 'Tab Closed'<CR>";
	key = "<S-M-W>";
      }
    ];
  };
}
