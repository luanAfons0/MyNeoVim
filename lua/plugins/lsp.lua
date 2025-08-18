return {
  {
    "williamboman/mason.nvim",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
      "artemave/workspace-diagnostics.nvim",
    },
    opts = {
      servers = {
        lua_ls = {
          settings = {
            Lua = {
              diagnostics = {
                globals = { "vim" },
              },
            },
          },
        },
        ts_ls = {
          on_attach = function(client)
            require("workspace-diagnostics").populate_workspace_diagnostics(client, 0)
          end,
        },
        prettier = {},
        prettierd = {},
        eslint = {},
      },
    },
    config = function(_, opts)
      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "prettier",
          "prettierd",
          "eslint",
          "ts_ls",
        },
      })

      local lspconfig = require("lspconfig")

      for server, config in ipairs(opts.servers) do
        -- vim.lsp.enable(server, config)
        -- vim.lsp.enable(server)
        lspconfig[server].setup(config)
        lspconfig[server].enable(server)
      end
    end,
  },
}
