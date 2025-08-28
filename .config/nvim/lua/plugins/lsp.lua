return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local servers = {
        "nixd",
        "lua_ls",
        "ts_ls",
        "html",
        "java_language_server",
        "hyprls",
        "markdown_oxide",
        "tinymist",
        "jdtls",
        "clangd",
      }

      local lspconfig = require("lspconfig")

      for _, server_name in ipairs(servers) do
        lspconfig[server_name].setup({})
      end
    end,
  },
}
