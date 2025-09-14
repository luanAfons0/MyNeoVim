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
        clangd = {
          keys = {
            { "<leader>ch", "<cmd>ClangdSwitchSourceHeader<cr>", desc = "Switch Source/Header (C/C++)" },
          },
          root_dir = function(fname)
            return require("lspconfig.util").root_pattern(
              "Makefile",
              "configure.ac",
              "configure.in",
              "config.h.in",
              "meson.build",
              "meson_options.txt",
              "build.ninja"
            )(fname) or require("lspconfig.util").root_pattern("compile_commands.json", "compile_flags.txt")(
              fname
            ) or require("lspconfig.util").find_git_ancestor(fname)
          end,
          capabilities = {
            offsetEncoding = { "utf-16" },
          },
          cmd = {
            "clangd",
            "--background-index",
            "--clang-tidy",
            "--header-insertion=iwyu",
            "--completion-style=detailed",
            "--function-arg-placeholders",
            "--fallback-style=llvm",
          },
          init_options = {
            usePlaceholders = true,
            completeUnimported = true,
            clangdFileStatus = true,
          },
        },
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
          init_options = {
            preferences = {
              disableSuggestions = true,
            },
          },
        },
        prettier = {},
        prettierd = {},
        eslint = {},
        csharp_ls = {},
        csharpier = {},
        ruby_lsp = {},
        setup = {
          clangd = function(_, opts)
            local clangd_ext_opts = LazyVim.opts("clangd_extensions.nvim")
            require("clangd_extensions").setup(vim.tbl_deep_extend("force", clangd_ext_opts or {}, { server = opts }))
            return false
          end,
        },
      },
    },
    config = function(_, opts)
      require("mason").setup({
        ensure_installed = {
          "lua_ls",
          "prettier",
          "prettierd",
          "eslint",
          "typescript-language-server",
          "csharp-language-server",
          "csharpier",
          "netcoredbg",
          "clangd",
        },
      })
      require("mason-lspconfig").setup({
        ensure_installed = {
          -- "lua_ls",
          -- "prettier",
          -- "prettierd",
          -- "eslint",
          --"typescript-language-server",
          -- csharp-language-server",
          --"csharpier",
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
