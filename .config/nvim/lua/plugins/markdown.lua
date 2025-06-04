return {
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && pnpm install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" }
  },
  {
    "obsidian-nvim/obsidian.nvim",
    version = "*",
    lazy = true,
    ft = "markdown",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      workspaces = {
        { name = "Livro", path = "~/Dropbox/vaults/Livro/" },
        { name = "Estudo", path = "~/Dropbox/vaults/Estudos/" }
      },
      completion = {
        nvim_cmp = false,
        blink = true,
        min_chars = 2
      }
    }
  }
}

