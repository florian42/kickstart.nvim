return {
  'stevearc/oil.nvim',
  opts = {},
  keys = {
    { "<leader>of", "<cmd>Oil<cr>" },
  },
  -- Optional dependencies
  -- dependencies = { { "echasnovski/mini.icons", opts = {} } },
  dependencies = { 'nvim-tree/nvim-web-devicons' }, -- use if prefer nvim-web-devicons
  config = function()
    require('oil').setup()
  end,
}
