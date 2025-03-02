local cmp = require("cmp")

cmp.setup({
    mapping = {
        -- Navigation in auto-completion (Tab for next, Shift-Tab for previous)
        ["<Tab>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
        ["<S-Tab>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),

        -- "Enter" to confirm auto-cmp's suggestion
        ["<CR>"] = cmp.mapping.confirm { select = true },

        -- Documentation scrolling (Ctrl-D to scroll up, Ctrl-F to scroll down)
        ["<C-d>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),

        -- Manually call auto-completion menu (Ctrl-Space)
        ["<C-Space>"] = cmp.mapping.complete()
    },
    sources = {
        { name = "nvim_lsp" },
        { name = "buffer" },
        { name = "path" }
    }
})
