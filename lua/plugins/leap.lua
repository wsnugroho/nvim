return {
  {
    "ggandor/leap.nvim",
    depedencies = {
      { "tpope/vim-repeat", event = "VeryLazy" },
    },
    keys = {
      { "s", "<Plug>(leap)", mode = { "n", "x", "o" }, desc = "Leap to" },
      { "S", "<Plug>(leap-from-window)", mode = { "n", "x", "o" }, desc = "Leap from Windows" },
    },
    config = function(_, opts)
      require("leap").opts.equivalence_classes = { " \t\r\n", "([{", ")]}", "'\"`" }
      vim.api.nvim_set_hl(0, "LeapMatch", { link = "Search" })
      vim.api.nvim_set_hl(0, "LeapBackdrop", { link = "Comment" })
    end,
  },
  {
    "ggandor/flit.nvim",
    depedencies = {
      "ggandor/leap.nvim",
      "tpope/vim-repeat",
    },
    keys = {
      { "f", mode = { "n", "x", "o" } },
      { "F", mode = { "n", "x", "o" } },
      { "t", mode = { "n", "x", "o" } },
      { "T", mode = { "n", "x", "o" } },
    },
    opts = { labeled_modes = "nx" },
  },
  {
    "rasulomaroff/telepath.nvim",
    lazy = false,
    dependencies = {
      "ggandor/leap.nvim",
    },
    keys = {
      {
        "r",
        function()
          require("telepath").remote({ restore = true })
        end,
        mode = "o",
      },
      {
        "R",
        function()
          require("telepath").remote({ restore = true, recursive = true })
        end,
        mode = "o",
      },
    },
  },
}
