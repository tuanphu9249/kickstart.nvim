return {
  {
    'nvim-pack/nvim-spectre',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    config = function()
      vim.keymap.set('n', '<leader>pp', '<cmd>lua require("spectre").toggle()<CR>', {
        desc = 'Toggle S[p]ectre',
      })
      vim.keymap.set('n', '<leader>pw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
        desc = 'Search current [w]ord',
      })
      vim.keymap.set('v', '<leader>pw', '<esc><cmd>lua require("spectre").open_visual()<CR>', {
        desc = 'Search current [w]ord',
      })
      vim.keymap.set('n', '<leader>pf', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
        desc = 'Search on current [f]ile',
      })
    end,
  },
}
