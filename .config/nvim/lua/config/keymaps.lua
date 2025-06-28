-- Telescope binds
vim.keymap.set("n", "<C-f>", ":Telescope fd hidden=true theme=dropdown<CR>", {  silent = true, desc = "File Search" })
vim.keymap.set("n", "<M-f>", ":Telescope oldfiles theme=dropdown<CR>", {  silent = true, desc = "Old Search" })
vim.keymap.set('n', '<C-n>', '<cmd>lua require("telescope").extensions.file_browser.file_browser({ path = vim.fn.expand("%:p:h"), cwd_to_path = true })<CR>', { desc = 'File Browser' })

-- Spell binds
vim.keymap.set("n", "<C-1>", "<cmd>setlocal spell spelllang=pt | echo 'Spell Portuguese(PT)'<CR>", { silent = true, desc = "Português"})
vim.keymap.set("n", "<C-2>", "<cmd>setlocal spell spelllang=en_us | echo 'Spell English(US)'<CR>", { silent = true, desc = "Português"})
vim.keymap.set("n", "<C-3>", "<cmd>setlocal nospell  | echo 'Spell Disabled'<CR>", { silent = true, desc = "Off"})




