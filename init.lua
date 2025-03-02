-- string numbering
vim.wo.number = true

-- enable mouse control
vim.o.mouse = "a"

-- Tab settings
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

-- disabling swap files creation
vim.o.swapfile = false

-- neovim plugins
require("plugins")
require("treesitter")
require("nerdtree")
require("gopls")
require("autocmp")
require("fzf")
require("theme")
