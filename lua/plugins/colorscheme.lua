return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    configs = function()
      vim.cmd([[colorscheme tokyonight]])
    end,
  },
}
