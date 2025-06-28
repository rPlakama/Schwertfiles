return {
{
  "iamcco/markdown-preview.nvim",
  lazy = true,
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  build = "cd app && pnpm install", -- YOU NEED PNPM TO INSTALL THIS.
  init = function()
    vim.g.mkdp_filetypes = { "markdown" }
  end,
  ft = { "markdown" },
}
}
