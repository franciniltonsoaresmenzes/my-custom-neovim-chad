---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<C-x>"] = {"<cmd> EslintFixAll <CR>", "Eslint Fix All" },
  },
}


M.lspsaga = {
  n = {
    ["<leader>ca"] = { "<cmd>Lspsaga code_action<CR>", "󰅱 Code Action" },
    --  ["gd"] = {
    --     function()
    --         vim.cmd("Lspsaga lsp_finder")
    --     end,
    --     "Go to definition",
    -- },
    -- ["<leader>lp"] = {
    --     "<cmd>Lspsaga peek_definition<cr>",
    --     "Peek definition",
    -- },
    -- ["<leader>k"] = {
    --     "<Cmd>Lspsaga hover_doc<cr>",
    --     "Hover lsp",
    -- },
  },
}
-- Defina um mapeamento de tecla para executar npx prisma format
vim.api.nvim_set_keymap('n', '<F4>', [[<Cmd>lua vim.cmd('!npx prisma format')<CR>]], { noremap = true, silent = true })


vim.api.nvim_set_keymap('n', '<leader>pr', '<cmd>lua require("rest-nvim").run()<CR>', { noremap = true, silent = true })

-- Função para executar a implementação de interface usando o tsserver LSP


-- Definir o atalho de teclado para executar a função
vim.api.nvim_set_keymap('n', '<F2>', '<cmd>lua vim.lsp.buf.code_action()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F3>', "<cmd>lua vim.lsp.buf.execute_command({ command = '_typescript.organizeImports', arguments = { vim.api.nvim_buf_get_name(0) } })<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<c-l>', 'compe#complete(\'<C-R>=JsDocGen()<CR>\')', {expr = true, noremap = true})




return M
