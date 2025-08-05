require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "csharp_ls", "omnisharp" }
vim.lsp.enable(servers)
-- read :h vim.lsp.config for changing options of lsp servers 
