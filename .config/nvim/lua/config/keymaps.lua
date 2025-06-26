# Telescope binds 
vim.keymap.set("n", "<C-f>", ":Telescope fd hidden=true theme=dropdown<CR>", {  silent = true, desc = "File Search" })
vim.keymap.set("n", "<M-f>", ":Telescope oldfiles theme=dropdown<CR>", {  silent = true, desc = "Old Search" })
vim.keymap.set("n", "<C-n>", ":Telescope file_browser hidden=true theme=dropdown<CR>", {  silent = true, desc = "File Explorer" })

