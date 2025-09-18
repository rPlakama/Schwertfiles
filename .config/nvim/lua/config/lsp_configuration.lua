-- Enabling Language Servers

vim.lsp.enable({
	"nixd",
	"gopls",
	"lua_ls",
	"sqls",
	"ts_ls",
	"hyprls",
	"sqls",
	"tinymist",
	"qmlls",
	"html",
	"cssls",
	"rust_analyzer",
	"markdown_oxide",
	"clangd",
	"jdtls",

})

-- Configuring Language Server

-- nixd
vim.lsp.config("nixd", {
	settings = {
		["nixd"] = {
			formatter = {
				command = "nixfmt"
			},
		},
	},
})

-- rust_analyzer
vim.lsp.config("rust_analyzer", {
	settings = {
		["nixd"] = {
			formatter = {
				command = "rustfmt"
			},
		},
	},
})
-- MySQL
-- vim.lsp.config("sqls", {
--         settings = {
--       	  ["sqls"] = {
--       		  formatter = {
--       			  command = "sql-formatter"
--       		  },
--       	  },
--         },
-- })
-- html
vim.lsp.config("html", {
	settings = {
		["html"] = {
			formatter = {
				command = "prettier"
			},
		},
	},
})

vim.lsp.config("cssls", {
	settings = {
		["cssls"] = {
			formatter = {
				command = "prettier"
			},
		},
	},
})
