-- Settings for LSP & Completion
local M = {}

-- Connecting coc.nvim extensions
vim.g.coc_global_extensions = { 
    "coc-go", 
    "coc-json", 
    "coc-tsserver", 
    "coc-pyright" 
}

-- Main bindings for LSP
vim.api.nvim_set_keymap("n", "<C-LeftMouse>", "<Plug>(coc-definition)", { silent = true })
vim.api.nvim_set_keymap("i", "<C-LeftMouse>", "<Esc><Plug>(coc-definition)", { silent = true })

-- Code formatting
vim.api.nvim_set_keymap(
    "n", 
    "<C-F12>", 
    ":CocCommand editor.action.formatDocument<CR>", 
    { silent = true, noremap = true }
)

-- Completion confirmation
vim.api.nvim_set_keymap(
    "i", 
    "<CR>", 
    "pumvisible() ? coc#pum#confirm(): \"\\<CR>\"", 
    { expr = true, noremap = true }
)

-- Completion and diagnostic messages settings
vim.cmd [[
    " Show completion's list automatically
    set completeopt=menuone,noinsert,noselect

    " Show diagnostics messages in status bar
    set updatetime=300

    " Enable virtual text mistakes
    autocmd CursorHold * silent call CocActionAsync('highlight')
]]

-- Autocompletion navigation
vim.cmd [[
    inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
    inoremap <silent><expr> <S-Tab> pumvisible() ? "\<C-p>" : "<\S-tab>"
]]

return M
