return {
  {
    'folke/noice.nvim',
    event = 'VeryLazy',
    opts = {},
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      'MunifTanjim/nui.nvim',
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      'rcarriga/nvim-notify',
    },
    -- config = function()
    --   local noice = require 'noice'
    --   vim.keymap.set('n', '<leader>nl', function()
    --     noice.cmd 'last'
    --   end, { desc = '[L]ast' })
    --   vim.keymap.set('n', '<leader>nh', function()
    --     noice.cmd 'history'
    --   end, { desc = '[H]istory' })
    -- end,
  },
}
