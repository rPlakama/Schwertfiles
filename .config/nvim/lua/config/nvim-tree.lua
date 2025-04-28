require("nvim-tree").setup({
  sync_root_with_cwd = true,
  update_focused_file = {
    enable = true,
    update_root = true,
    update_cwd = true
  },
  view = {
    -- Optional: Keep cursor position stable
    preserve_window_proportions = true,
    centralize_selection = true
  }
})
