-- setting amount of strings to scroll
vim.opt.scroll = 4
vim.opt.signcolumn = "yes"

-- user settings for screen scrolling
vim.keymap.set("n", "<C-f>", "4jzz", { noremap = true, silent = true })
vim.keymap.set("n", "<C-d>", "4kzz", { noremap = true, silent = true })

-- string numbering
vim.wo.number = true

-- enable mouse control
vim.o.mouse = "a"

-- Tab settings
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.g.NERDTreeDirArrows = 1

-- disabling swap files creation
vim.o.swapfile = false

-- neovim plugins
require("plugins")
require("coc-nvim")
require("theme")
require("nerdtree")
require("fzf")
require("treesitter")
require("statusbar")
