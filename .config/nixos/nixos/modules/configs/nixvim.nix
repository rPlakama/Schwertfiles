{ ... }: {

programs.nixvim = {
  enable = true;
  plugins = {
  	# Plugins 
    lualine.enable = true;
    smear-cursor.enable = true;
    blink-cmp.enable = true;
    markdown-preview.enable = true;
    dashboard.enable = true;
    telescope.enable = true;
    	# Plugins Settings
   dashboard.settings = 
   {
  change_to_vcs_root = true;
  config = {
    footer = [
      "Made with ❤️"
    ];
    header = [
      "███╗   ██╗██╗██╗  ██╗██╗   ██╗██╗███╗   ███╗"
      "████╗  ██║██║╚██╗██╔╝██║   ██║██║████╗ ████║"
      "██╔██╗ ██║██║ ╚███╔╝ ██║   ██║██║██╔████╔██║"
      "██║╚██╗██║██║ ██╔██╗ ╚██╗ ██╔╝██║██║╚██╔╝██║"
      "██║ ╚████║██║██╔╝ ██╗ ╚████╔╝ ██║██║ ╚═╝ ██║"
      "╚═╝  ╚═══╝╚═╝╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝"
    ];
    mru = {
      limit = 20;
    };
    project = {
      enable = false;
    };
    shortcut = [
      {
        action = {
          __raw = "function(path) vim.cmd('Telescope find_files') end";
        };
        desc = "Files";
        group = "Label";
        icon = " ";
        icon_hl = "@variable";
        key = "f";
      }
      {
        action = "Telescope app";
        desc = " Apps";
        group = "DiagnosticHint";
        key = "a";
      }
      {
        action = "Telescope dotfiles";
        desc = " dotfiles";
        group = "Number";
        key = "d";
      }
    ];
    week_header = {
      enable = true;
    };
  };
  theme = "hyper";
};

    };
  };
}
