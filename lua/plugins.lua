vim.cmd[[packadd packer.nvim]]

return require("packer").startup(function(use)
    use "wbthomason/packer.nvim" -- Plugin manager

    use "nvim-treesitter/nvim-treesitter" -- Syntax highlighting
    use "preservim/nerdtree" -- File manager
    use "junegunn/fzf"
    use "junegunn/fzf.vim"
    use "folke/tokyonight.nvim"
    
    -- Language Server Protocol & Completion
    use { "neoclide/coc.nvim", branch = "release" }
end)
