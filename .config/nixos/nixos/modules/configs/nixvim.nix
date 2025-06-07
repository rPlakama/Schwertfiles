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
      lualine.enable = true;
      smear-cursor.enable = true;
      blink-cmp.enable = true;
      markdown-preview.enable = true;
      telescope.enable = true;
      web-devicons.enable = true;
      obsidian.enable = true;
      neo-tree.enable = true;
      which-key.enable = true;

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
    };

    keymaps = [
      {
        action = "<cmd>:Telescope find_files find_command=rg,--ignore,--hidden,--files<CR>";
        key = "<C-f>";
        options.silent = true;
      }
      {
        action = "<cmd>:Telescope oldfiles<CR>";
        key = "<C-d>";
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
      action = "<cmd>:set spell spelllang=pt | echom 'Portuguese Enabled'<CR>";
      key = "<C-1>";
      }
      {
      action = "<cmd>:set spell spelllang=en_us | echom 'English Enabled'<CR>";
      key = "<C-2>";
      }
      {
      action = "<cmd>:set nospell | echom 'Spell Disabled'<CR>";
      key = "<C-3>";
      }
    ];
  };
}
