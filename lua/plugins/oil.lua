return {
  "stevearc/oil.nvim",
  lazy = false,
  dependencies = { "echasnovski/mini.icons" },
  keys = {
    { "-", "<cmd>Oil<cr>", mode = "n", { desc = "Open parent directory" } },
  },
  opts = {},
}
