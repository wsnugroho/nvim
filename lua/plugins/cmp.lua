return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "andersevenrud/cmp-tmux",
  },
  opts = function(_, opts)
    -- opts.sources = vim.tbl_map(function(source)
    --   if source.name == "cmp-buffer" then
    --     return {
    --       name = "buffer",
    --       option = {
    --         get_bufnrs = function()
    --           return vim.api.nvim_list_bufs()
    --         end,
    --       },
    --     }
    --   end
    -- end, opts.sources)
    --
    opts.window = {
      documentation = {
        max_width = 80,
        max_height = 30,
        border = "rounded",
        winhighlight = "NormalFloat:NoicePopup,FloatBorder:NoicePopupBorder",
      },
    }
  end,
}
