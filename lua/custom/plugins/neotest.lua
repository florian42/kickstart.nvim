return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
    "nvim-neotest/neotest-python",
    'nvim-neotest/neotest-jest'
  },
  config = function()
    require("neotest").setup({
      adapters = {
        require("neotest-jest"),
        require("neotest-python"),
      },
    })
  end,
}
