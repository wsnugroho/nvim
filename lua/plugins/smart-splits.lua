return {
  "mrjones2014/smart-splits.nvim",
  lazy = false,
  -- stylua: ignore
  keys = {
    -- moving between splits
    { '<C-h>', function() require('smart-splits').move_cursor_left() end, mode = 'n',  desc = 'Move focus to left window' },
    { '<C-j>', function() require('smart-splits').move_cursor_down() end, mode = 'n', desc = 'Move focus to lower window' },
    { '<C-k>', function() require('smart-splits').move_cursor_right() end, mode = 'n', desc = 'Move focus to right window' },
    { '<C-l>', function() require('smart-splits').move_cursor_up() end, mode = 'n', desc = 'Move focus to upper window'  },
    { '<C-\\>', function() require('smart-splits').move_cursor_previous() end, mode = 'n',  desc = 'Move focus to previous window' },
    -- resizing splits
    { '<A-h>', function() require('smart-splits').resize_left() end, mode = 'n',  desc = 'Resize window left side' },
    { '<A-j>', function() require('smart-splits').resize_down() end, mode = 'n', desc = 'Resize window bottom side' },
    { '<A-k>', function() require('smart-splits').resize_up() end, mode = 'n', desc = 'Resize window top side' },
    { '<A-l>', function() require('smart-splits').resize_right() end, mode = 'n', desc = 'Resize window right side'  },
  },
}
