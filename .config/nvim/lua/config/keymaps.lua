-- Mouse
vim.opt.mouse = ''
-- LSP
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)
-- Nvim Tree
vim.keymap.set({ "n", "v" }, "<C-n>", "<cmd>Yazi<CR>")
-- Fzf binds
vim.keymap.set("n", "<leader>ff", "<cmd>FzfLua <CR>", { silent = true, desc = "FzfLua ― The Goat" })
vim.keymap.set("n", "<leader>fs", "<cmd> FzfLua files <CR>", { silent = true, desc = "FzfLua files search" })
vim.keymap.set("n", "<leader>fa", "<cmd> FzfLua buffers <CR>", { silent = true, desc = "Fzf buffers search" })
vim.keymap.set("n", "<leader>fg", "<cmd> FzfLua live_grep <CR>", { silent = true, desc = "Fzf Live Grep"})
vim.keymap.set("n", "<leader>fr", "<cmd> FzfLua oldfiles <CR>", { silent = true, desc = "Fzf oldfiles"})


vim.keymap.set({ "n", "v"}, "z=", "<cmd>Fzf spell_suggest<CR>", { silent = true, desc = "FzfLua spell suggestion" })
-- Spell binds
vim.keymap.set("n", "<C-1>", "<cmd>setlocal spell spelllang=pt | echo 'Spell Portuguese(PT)'<CR>",
	{ silent = true, desc = "Português" })
vim.keymap.set("n", "<C-2>", "<cmd>setlocal spell spelllang=en_us | echo 'Spell English(US)'<CR>",
	{ silent = true, desc = "Português" })
vim.keymap.set("n", "<C-3>", "<cmd>setlocal nospell  | echo 'Spell Disabled'<CR>", { silent = true, desc = "Off" })

-- Tabs
vim.keymap.set("n", "<M-1>", "<cmd>tabn1<CR>", { silent = true, desc = "Tab 1" })
vim.keymap.set("n", "<M-2>", "<cmd>tabn2<CR>", { silent = true, desc = "Tab 2" })
vim.keymap.set("n", "<M-3>", "<cmd>tabn3<CR>", { silent = true, desc = "Tab 3" })
vim.keymap.set("n", "<M-4>", "<cmd>tabn4<CR>", { silent = true, desc = "Tab 4" })
vim.keymap.set("n", "<M-5>", "<cmd>tabn5<CR>", { silent = true, desc = "Tab 5" })
vim.keymap.set("n", "<M-6>", "<cmd>tabn6<CR>", { silent = true, desc = "Tab 6" })
vim.keymap.set("n", "<M-7>", "<cmd>tabn7<CR>", { silent = true, desc = "Tab 7" })
vim.keymap.set("n", "<M-8>", "<cmd>tabn8<CR>", { silent = true, desc = "Tab 8" })
vim.keymap.set("n", "<M-9>", "<cmd>tabn9<CR>", { silent = true, desc = "Tab 9" })
vim.keymap.set("n", "<M-0>", "<cmd>tabn10<CR>", { silent = true, desc = "Tab 10" })
vim.keymap.set("n", "<M-w>", "<cmd>tabclose <CR>", { silent = true, desc = "Close Tab" })
vim.keymap.set("n", "<M-t>", "<cmd>tabnew<CR>", { silent = true, desc = "New Tab" })

-- Move lines up/down
vim.keymap.set("n", "<C-A-j>", ":m .+1<CR>==", { desc = "Move line down" })
vim.keymap.set("n", "<C-A-k>", ":m .-2<CR>==", { desc = "Move line up" })
-- Better indenting in visual mode
vim.keymap.set("v", "<M-h>", "<gv", { desc = "Indent left and reselect" })
vim.keymap.set("v", "<M-l>", ">gv", { desc = "Indent right and reselect" })

-- Full Path
vim.keymap.set("n", "<leader>pa", function()
	local path = vim.fn.expand("%:p:h")
	vim.fn.setreg("+", path)
	print("Current Location:", path)
end)

-- CD to path
vim.keymap.set("n", "<leader>cd", "<cmd>cd %:p:h<CR>", { silent = true, desc = "Jump to Current Directory."})

-- -- Basic autocommands
local augroup = vim.api.nvim_create_augroup("UserConfig", {})
-- Hightlight yank
vim.api.nvim_create_autocmd("TextYankPost", {
	group = augroup,
	callback = function()
		vim.highlight.on_yank()
	end,
})
