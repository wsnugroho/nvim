return {
  { import = "lazyvim.plugins.extras.lang.java" },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = { "google-java-format" },
    },
  },
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = function(_, opts)
      opts.formatters_by_ft = opts.formatters_by_ft or {}
      opts.formatters_by_ft.java = { "google-java-format" }
    end,
  },
}
