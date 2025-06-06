local lspconfig = require("lspconfig")

local on_attach = function(_, bufnr)
  local map = function(mode, lhs, rhs, desc)
    vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc, noremap = true, silent = true })
  end

  map("n", "gd", vim.lsp.buf.definition, "[G]oto [D]efinition")
  map("n", "K", vim.lsp.buf.hover, "Hover Docs")
  map("n", "<leader>rn", vim.lsp.buf.rename, "[R]e[n]ame Symbol")
  map("n", "<leader>ca", vim.lsp.buf.code_action, "[C]ode [A]ction")
  map("n", "gr", vim.lsp.buf.references, "[G]oto [R]eferences")
  map("n", "<leader>f", function()
    vim.lsp.buf.format({ async = true })
  end, "[F]ormat")
end

local servers = {

  pyright = {},
  rust_analyzer = {},
  nixd = {
	  formatting = {
		  command = { "alejandra" },
	  },
	},
  clangd = {},
}

-- Setup each server
for server, config in pairs(servers) do
  lspconfig[server].setup(vim.tbl_deep_extend("force", {
    on_attach = on_attach,
    capabilities = capabilities,
  }, config))
end
