{...}: {
  programs.nixvim = {
    enable = true;
    opts = {
      conceallevel = 2;
      clipboard = "unnamedplus";
      shortmess = "filnxtToOFSI";
      scrolloff = 999;
      number = true;
    };

    plugins = {
      # Plugins
      markdown-preview.enable = true;
      telescope.enable = true;
      obsidian.enable = true;
      which-key.enable = true;
      treesitter.enable = true;
      smear-cursor.enable = true;
      blink-cmp.enable = true;
      nvim-tree.enable = true;
      barbar.enable = true;
      # LSP

      lsp = {
        enable = true;
        servers = {
          rust_analyzer = {
            enable = true;
            installRustc = false;
            installCargo = false;
          };
          nixd.enable = true;
          clangd.enable = true;
	  texlab.enable = true;
        };
      };

      # latex
        vimtex = { 
	  enable = true;
	  settings = {
	    compiler_method = "tectonic";
	    };
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
          snippets.enable = true;
          git.enable = true;
          diff.enable = true;
        };
      };
    };
    # keymaps
    keymaps = [
      {
        action = "<cmd>lua vim.diagnostic.open_float()<CR>";
        key = "<C-q>";
      }
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
        action = "<cmd>:NvimTreeOpen<CR>";
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
        action = "<cmd>:tabnew | echo 'New Buffer'<CR>";
        key = "<S-M-T>";
      }
      {
        action = "<cmd>:BufferDelete<CR>";
        key = "<S-M-W>";
      }
    ];
  };
}
