local lspconfig = require("lspconfig")

lspconfig.gopls.setup {
    cmd = {"gopls"},
    filetypes = {"go", "gomod"},
    root_dir = lspconfig.util.root_pattern("go.mod", ".git"),
    settings = {
        gopls = {
            analyses = { unusedparams = true, shadow = true },
            staticcheck = true,
            usePlaceholders = true
        }
    }
}
