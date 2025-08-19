return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui",
      "theHamsta/nvim-dap-virtual-text",
      "nvim-neotest/nvim-nio",
      "williamboman/mason.nvim",
    },
    config = function()
      local dap = require("dap")
      local ui = require("dapui")
      local dotnet = require("config/nvim-dap-dotnet")
      local mason_path = vim.fn.stdpath("data") .. "/mason/packages/netcoredbg/netcoredbg"

      require("dapui").setup()
      require("nvim-dap-virtual-text").setup({})

      dap.adapters.coreclr = {
        type = "executable",
        command = mason_path,
        args = { "--interpreter=vscode" },
      }

      dap.adapters.netcoredbg = {
        type = "executable",
        command = mason_path,
        args = { "--interpreter=vscode" },
      }

      dap.configurations.cs = {
        {
          type = "coreclr",
          name = "launch - netcoredbg",
          request = "launch",
          program = function()
            return dotnet.build_dll_path()
          end,
          env = {
            ASPNETCORE_ENVIRONMENT = function()
              return "Development"
            end,
            ASPNETCORE_URLS = function()
              return "http://localhost:5050"
            end,
          },
        },
      }

      vim.keymap.set("n", "<F9>", dap.toggle_breakpoint)
      vim.keymap.set("n", "<space>dg", dap.run_to_cursor)

      -- Eval var under cursor
      vim.keymap.set("n", "<space>?", function()
        require("dapui").eval(nil, { enter = true })
      end)

      vim.keymap.set("n", "<F1>", dap.continue)
      vim.keymap.set("n", "<F2>", dap.step_into)
      vim.keymap.set("n", "<F3>", dap.step_over)
      vim.keymap.set("n", "<F4>", dap.step_out)
      vim.keymap.set("n", "<F5>", dap.step_back)
      vim.keymap.set("n", "<F13>", dap.restart)

      dap.listeners.before.attach.dapui_config = function()
        ui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        ui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        ui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        ui.close()
      end
    end,
  },
}
