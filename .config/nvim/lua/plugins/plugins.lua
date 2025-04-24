
-- Plugins
return {
    {
        "saghen/blink.cmp",
        -- optional: provides snippets for the snippet source
        dependencies = {"rafamadriz/friendly-snippets"},
        -- use a release tag to download pre-built binaries
        version = "1.*",
        opts = {
            keymap = {preset = "super-tab"},
            appearance = {
                nerd_font_variant = "mono"
            },
            completion = {documentation = {auto_show = false}},
            sources = {
                default = {"lsp", "path", "snippets", "buffer"}
            },
            fuzzy = {implementation = "prefer_rust_with_warning"}
        },
        opts_extend = {"sources.default"}
    },
    {
        "nvim-telescope/telescope.nvim",
        keys = {
            -- add a keymap to browse plugin files
            -- stylua: ignore
            {
                "<leader>fp",
                function()
                    require("telescope.builtin").find_files({cwd = require("lazy.core.config").options.root})
                end,
                desc = "Find Plugin File"
            }
        },
        -- change some options
        opts = {
            defaults = {
                layout_strategy = "horizontal",
                layout_config = {prompt_position = "top"},
                sorting_strategy = "ascending",
                winblend = 0
            }
        }
    },
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        opts = {},
        keys = {
            {
                "<leader>?",
                function()
                    require("which-key").show({global = false})
                end,
                desc = "Buffer Local Keymaps (which-key)"
            }
        }
    },
    {
        "folke/snacks.nvim",
        opts = {
            dashboard = {
                preset = {
                    pick = function(cmd, opts)
                        return LazyVim.pick(cmd, opts)()
                    end,
                    header = [[



    •   
┏┓┓┏┓┏┳┓
┛┗┗┛┗┛┗┗
        
 ]],
                    keys = {
                        {
                            icon = "󱝩 ",
                            key = "f",
                            desc = "Find File",
                            action = ":lua require('telescope.builtin').find_files({ cwd = vim.fn.expand('~'), hidden = true, layout_config = { width = 0.8 }, previewer = false })"
                        },
                        {
                            icon = "󱝏 ",
                            key = "r",
                            desc = "Recent Files",
                            action = ":lua Snacks.dashboard.pick('oldfiles')"
                        },
                        {icon = "󱝯 ", key = "s", desc = "Restore Session", section = "session"},
                        {icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy"}
                    }
                }
            }
        }
    },
    {
        "nvim-tree/nvim-tree.lua",
        cmd = {"NvimTreeToggle", "NvimTreeFocus"},
        opts = function()
        end
    },
    {"nvim-treesitter/nvim-treesitter"},
    {"echasnovski/mini.nvim", version = false},
    {"catppuccin/nvim", name = "catppuccin", priority = 1000},
    {
        "obsidian-nvim/obsidian.nvim",
        version = "*", -- recommended, use latest release instead of latest commit
        lazy = true,
        ft = "markdown",
        -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
        -- event = {
        --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
        --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
        --   -- refer to `:h file-pattern` for more examples
        --   "BufReadPre path/to/my-vault/*.md",
        --   "BufNewFile path/to/my-vault/*.md",
        -- },
        dependencies = {
            -- Required.
            "nvim-lua/plenary.nvim"

            -- see below for full list of optional dependencies 👇
        },
        opts = {
            workspaces = {
                {
                    name = "Livro",
                    path = "~/Dropbox/vaults/Livro/"
                },
                {
                    name = "Estudo",
                    path = "~/Dropbox/vaults/Estudos/"
                }
            },
            completion = {
                -- Enables completion using nvim_cmp
                nvim_cmp = false,
                -- Enables completion using blink.cmp
                blink = true,
                -- Trigger completion at 2 chars.
                min_chars = 2
            }
        }
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {"echasnovski/mini.nvim"}
    },
    {
        "folke/persistence.nvim",
        event = "BufReadPre", -- this will only start session saving when an actual file was opened
        opts = {}
    },
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {
            lsp = {
                override = {
                    ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                    ["vim.lsp.util.stylize_markdown"] = true,
                    ["cmp.entry.get_documentation"] = true
                }
            },
            routes = {
                {
                    filter = {
                        event = "msg_show",
                        any = {
                            {find = "%d+L, %d+B"},
                            {find = "; after #%d+"},
                            {find = "; before #%d+"}
                        }
                    },
                    view = "mini"
                }
            },
            presets = {
                bottom_search = true,
                command_palette = true,
                long_message_to_split = true
            }
        },
        -- stylua: ignore
        keys = {
            {"<leader>sn", "", desc = "+noice"},
            {"<S-Enter>", function()
                    require("noice").redirect(vim.fn.getcmdline())
                end, mode = "c", desc = "Redirect Cmdline"},
            {"<leader>snl", function()
                    require("noice").cmd("last")
                end, desc = "Noice Last Message"},
            {"<leader>snh", function()
                    require("noice").cmd("history")
                end, desc = "Noice History"},
            {"<leader>sna", function()
                    require("noice").cmd("all")
                end, desc = "Noice All"},
            {"<leader>snd", function()
                    require("noice").cmd("dismiss")
                end, desc = "Dismiss All"},
            {"<leader>snt", function()
                    require("noice").cmd("pick")
                end, desc = "Noice Picker (Telescope/FzfLua)"},
            {"<c-f>", function()
                    if not require("noice.lsp").scroll(4) then
                        return "<c-f>"
                    end
                end, silent = true, expr = true, desc = "Scroll Forward", mode = {"i", "n", "s"}},
            {"<c-b>", function()
                    if not require("noice.lsp").scroll(-4) then
                        return "<c-b>"
                    end
                end, silent = true, expr = true, desc = "Scroll Backward", mode = {"i", "n", "s"}}
        },
        config = function(_, opts)
            -- HACK: noice shows messages from before it was enabled,
            -- but this is not ideal when Lazy is installing plugins,
            -- so clear the messages in this case.
            if vim.o.filetype == "lazy" then
                vim.cmd([[messages clear]])
            end
            require("noice").setup(opts)
        end
    },
    {
        "romgrk/barbar.nvim",
        dependencies = {
            "lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
            "nvim-tree/nvim-web-devicons" -- OPTIONAL: for file icons
        }
    },
    {
        "neovim/nvim-lspconfig"
    },
    {
        "iamcco/markdown-preview.nvim",
        cmd = {"MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop"},
        build = "cd app && yarn install",
        init = function()
            vim.g.mkdp_filetypes = {"markdown"}
        end,
        ft = {"markdown"}
    }
}


