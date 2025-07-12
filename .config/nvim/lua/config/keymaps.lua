-- Telescope binds
vim.keymap.set("n", "<C-f>", ":Telescope fd hidden=true theme=dropdown<CR>", {  silent = true, desc = "File Search" })
vim.keymap.set("n", "<M-f>", ":Telescope oldfiles theme=dropdown<CR>", {  silent = true, desc = "Old Search" })
vim.keymap.set('n', '<C-n>', '<cmd>lua require("telescope").extensions.file_browser.file_browser({ path = vim.fn.expand("%:p:h"), cwd_to_path = true, theme=dropdown})<CR>', { desc = 'File Browser' })

-- Spell binds
vim.keymap.set("n", "<C-1>", "<cmd>setlocal spell spelllang=pt | echo 'Spell Portuguese(PT)'<CR>", { silent = true, desc = "Português"})
vim.keymap.set("n", "<C-2>", "<cmd>setlocal spell spelllang=en_us | echo 'Spell English(US)'<CR>", { silent = true, desc = "Português"})
vim.keymap.set("n", "<C-3>", "<cmd>setlocal nospell  | echo 'Spell Disabled'<CR>", { silent = true, desc = "Off"})

-- Tabs 
vim.keymap.set("n", "<M-1>", "<cmd>tabn1<CR>", { silent = true, desc = "Tab 1"})
vim.keymap.set("n", "<M-2>", "<cmd>tabn2<CR>", { silent = true, desc = "Tab 2"})
vim.keymap.set("n", "<M-3>", "<cmd>tabn3<CR>", { silent = true, desc = "Tab 3"})
vim.keymap.set("n", "<M-4>", "<cmd>tabn4<CR>", { silent = true, desc = "Tab 4"})
vim.keymap.set("n", "<M-5>", "<cmd>tabn5<CR>", { silent = true, desc = "Tab 5"})
vim.keymap.set("n", "<M-6>", "<cmd>tabn6<CR>", { silent = true, desc = "Tab 6"})
vim.keymap.set("n", "<M-7>", "<cmd>tabn7<CR>", { silent = true, desc = "Tab 7"})
vim.keymap.set("n", "<M-8>", "<cmd>tabn8<CR>", { silent = true, desc = "Tab 8"})
vim.keymap.set("n", "<M-9>", "<cmd>tabn9<CR>", { silent = true, desc = "Tab 9"})
vim.keymap.set("n", "<M-0>", "<cmd>tabn10<CR>", { silent = true, desc = "Tab 10"})
vim.keymap.set("n", "<M-w>", "<cmd>tabclose<CR>", { silent = true, desc = "Close Tab"})
vim.keymap.set("n", "<M-t>", "<cmd>tabnew<CR>", { silent = true, desc = "New Tab"})




