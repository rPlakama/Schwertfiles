return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      require('lspconfig').lua_ls.setup({})
      require('lspconfig').nixd.setup({})
      require('lspconfig').ts_ls.setup({})
      require('lspconfig').java_language_server.setup({}) 
      require('lspconfig').hyprls.setup({})
      require('lspconfig').markdown_oxide.setup({})
      require('lspconfig').qmlls.setup({})
      require('lspconfig').cssls.setup({})

     end,
  },
}
