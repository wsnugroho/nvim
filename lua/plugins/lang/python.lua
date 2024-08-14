return {
  { import = "lazyvim.plugins.extras.lang.python" },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = { "black", "isort", "flake8" },
    },
  },
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = function(_, opts)
      opts.formatters_by_ft = opts.formatters_by_ft or {}
      opts.formatters_by_ft.python = { "black", "isort" }
    end,
  },
  {
    "mfussenegger/nvim-lint",
    opts = function(_, opts)
      opts.linters_by_ft = opts.linters_by_ft or {}
      opts.linters_by_ft.python = { "flake8" }
    end,
  },
}
