return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  keys = {
    { "<leader>sf", "<cmd>Telescope find_files<cr>" },
    { "<leader>sg", "<cmd>Telescope live_grep<cr>" },
  },
  dependencies = { "nvim-lua/plenary.nvim" },
}
