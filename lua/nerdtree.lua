-- F11 (was mapped by CapsLock) for NERDTree opening
vim.api.nvim_set_keymap("n", "<F12>", ":NERDTreeToggle<CR>", {
    noremap = true,
    silent = true
})
