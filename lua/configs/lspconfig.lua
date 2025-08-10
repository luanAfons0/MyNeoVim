require("nvchad.configs.lspconfig").defaults()

local base = require("nvchad.configs.lspconfig")
local on_attach = base.on_attach
local capabilities = base.capabilities
local lspconfig = require("lspconfig")

local servers = { "html", "cssls", "csharp_ls", "omnisharp", "ts_ls" }

-- Config the error display
vim.diagnostic.config({
  virtual_text = true,
  underline = true
})

lspconfig.eslint.setup({
  on_attach = on_attach,
  capabilities = capabilities
})

vim.lsp.enable(servers)
-- read :h vim.lsp.config for changing options of lsp servers 
