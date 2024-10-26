return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    setup = {},
    config = function()
      local harpoon = require 'harpoon'

      vim.keymap.set('n', '<leader>,', function()
        harpoon:list():add()
      end)
      vim.keymap.set('n', ',,', function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end)

      vim.keymap.set('n', ',a', function()
        harpoon:list():select(1)
      end)
      vim.keymap.set('n', ',w', function()
        harpoon:list():select(2)
      end)
      vim.keymap.set('n', ',s', function()
        harpoon:list():select(3)
      end)
      vim.keymap.set('n', ',d', function()
        harpoon:list():select(4)
      end)

      -- Toggle previous & next buffers stored within harpoon list
      vim.keymap.set('n', ',n', function()
        harpoon:list():prev()
      end)
      vim.keymap.set('n', ',p', function()
        harpoon:list():next()
      end)
    end,
  },
}
