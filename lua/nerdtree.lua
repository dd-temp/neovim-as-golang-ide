-- CapsLock for NERDTree opening
vim.api.nvim_set_keymap("n", "<CapsLock>", ":NERDTreeToggle<CR>", {
    noremap = true,
    silent = true
})
