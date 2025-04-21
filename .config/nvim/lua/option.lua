--------------------------------------------------
-- Configurações Básicas do Neovim
--------------------------------------------------
-- Configuração para usar a área de transferência do sistema
vim.o.clipboard = 'unnamedplus'

-- Configurações de exibição de números
vim.o.number = true         -- Mostra números de linha
vim.o.relativenumber = true -- Mostra números relativos à linha atual

-- Configurações de aparência
vim.o.signcolumn = 'yes'    -- Coluna de sinais sempre visível
vim.o.termguicolors = true  -- Cores verdadeiras no terminal
vim.opt.conceallevel = 2    -- Oculta marcações em certos arquivos

-- Configurações de indentação
vim.o.tabstop = 4           -- Largura visual de um caractere tab
vim.o.shiftwidth = 4        -- Espaços para indentação

-- Configurações de desempenho
vim.o.updatetime = 300      -- Tempo de atualização mais rápido para melhor experiência

-- Configuração de Highlight de Linha
vim.o.cursorline = false -- Criar highlight na linha do cursor

--------------------------------------------------
-- Configurações de Verificação Ortográfica
--------------------------------------------------

local spell_types = { "text", "plaintex", "typst", "gitcommit", "markdown" }

vim.api.nvim_create_autocmd("FileType", {
    pattern = spell_types,
    callback = function()
        vim.opt_local.spell = true
        vim.opt_local.spelllang = "pt"  -- Idioma padrão
    end
})

local notify = function(msg)
    vim.notify(msg, vim.log.levels.INFO, { title = "Spell Check" })
end

vim.keymap.set('n', '<C-1>', function()
    vim.opt.spelllang = 'pt'
    notify("Português ativado")
end, { desc = "Português" })

vim.keymap.set('n', '<C-2>', function()
    vim.opt.spelllang = 'en'
    notify("Inglês ativado")
end, { desc = "Inglês" })

vim.keymap.set('n', '<C-3>', function()
    vim.opt.spell = not vim.opt.spell:get()
    notify(vim.opt.spell:get() and "Spell: ON" or "Spell: OFF")
end, { desc = "Toggle Spell Check" })

--------------------------------------------------
-- Configurações de Teclas Líderes
--------------------------------------------------
vim.g.mapleader = '<Space>'      -- Define a tecla líder global
vim.g.maplocalleader = '<Space>'       -- Define a tecla líder local

--------------------------------------------------
--Mapeamentos de Teclas Gerais
--------------------------------------------------
-- Abre/fecha o explorador de arquivos
vim.keymap.set('n', '<C-N>', ':NvimTreeToggle<CR>', { desc = "Alterna visibilidade do NvimTree" })

-- Navegação de verificação ortográfica
vim.keymap.set('n', '<M-e>', ']s', { desc = "Próximo erro ortográfico" })
vim.keymap.set('n', '<M-q>', '[s', { desc = "Erro ortográfico anterior" })

-- Desabilita teclas de seta e mouse para forçar uso de hjkl
vim.keymap.set("", "<up>", "<nop>", { noremap = true, desc = "Desabilita tecla para cima" })
vim.keymap.set("", "<down>", "<nop>", { noremap = true, desc = "Desabilita tecla para baixo" })
vim.keymap.set("i", "<up>", "<nop>", { noremap = true, desc = "Desabilita tecla para cima no modo de inserção" })
vim.keymap.set("i", "<down>", "<nop>", { noremap = true, desc = "Desabilita tecla para baixo no modo de inserção" })
vim.opt.mouse = ""          -- Desabilita interações com o mouse

-- Telescope Finder 
vim.keymap.set('n', '<Space>f', '<cmd>Telescope find_files<cr>', { desc = "Busca de arquivos com Telescope" })

--------------------------------------------------
-- Gerenciamento de Abas/Buffers
--------------------------------------------------
-- Mapeamento para abas numeradas de 1 a 9
for i = 1, 9 do
  vim.api.nvim_set_keymap('n', '<M-'..i..'>', '<Cmd>BufferGoto '..i..'<CR>', {
    noremap = true,
    silent = true,
    desc = "Vai para o buffer " .. i
  })
end

-- Criar nova aba
vim.api.nvim_set_keymap('n', '<C-Space>', ':tabnew<CR>', {
  noremap = true,
  silent = true,
  desc = "Cria uma nova aba"
})

-- Fechar buffer atual
vim.api.nvim_set_keymap('n', '<C-X>', ':BufferClose<CR>', {
  noremap = true,
  silent = true,
  desc = "Fecha o buffer atual"
})

-- Fechar todos os buffers exceto o atual
vim.api.nvim_set_keymap('n', '<M-X>', '<Cmd>BufferCloseAllButCurrent<CR>', {
  noremap = true,
  silent = true,
  desc = "Fecha todos os buffers exceto o atual"
})

--------------------------------------------------
-- Gerenciamento de Sessões (persistence.nvim)
--------------------------------------------------
vim.keymap.set("n", "<leader>qs", function() require("persistence").load() end, 
               { desc = "Carrega a última sessão do diretório atual" })
               
vim.keymap.set("n", "<leader>S", function() require("persistence").select() end,
               { desc = "Seleciona uma sessão para carregar" })
               
vim.keymap.set("n", "<leader>ql", function() require("persistence").load({ last = true }) end,
               { desc = "Carrega a última sessão salva" })
               
vim.keymap.set("n", "<leader>qd", function() require("persistence").stop() end,
               { desc = "Para de salvar automaticamente a sessão atual" })

--------------------------------------------------
-- Configurações do Obsidian
--------------------------------------------------
vim.keymap.set("n", "<M-b>", "<Cmd>ObsidianQuickSwitch<CR>", 
               { desc = "Alternar rapidamente entre notas do Obsidian" })
               
vim.keymap.set("n", "<M-l>", "<Cmd>ObsidianSearch<CR>",
               { desc = "Pesquisar nas notas do Obsidian" })

--------------------------------------------------
-- Configurações do LSP
--------------------------------------------------
-- Show LSP diagnostics in a popup window with Space+e
vim.keymap.set('n', '<C-e>', function()
  vim.diagnostic.open_float({ scope = 'cursor', border = 'rounded' })
end, { noremap = true, silent = true, desc = 'LSP Error' })

