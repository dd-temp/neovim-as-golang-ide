vim.cmd[[packadd packer.nvim]]

return require("packer").startup(function(use)
    use "wbthomason/packer.nvim" -- Plugin manager

    use "nvim-treesitter/nvim-treesitter" -- Syntax highlighting
    use "fatih/vim-go" -- Golang tools
    use "neovim/nvim-lspconfig" -- Language Server Protocol

    -- Auto-Completion
    use {
        "hrsh7th/nvim-cmp",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline"
    }

    use "preservim/nerdtree" -- File manager
    use "junegunn/fzf"
    use "junegunn/fzf.vim"
    use "folke/tokyonight.nvim"
end)
