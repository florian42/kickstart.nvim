return {
  'ruifm/gitlinker.nvim',
  version = "*",
  dependencies = {
    'nvim-lua/plenary.nvim'
  },
  config = function()
    require("gitlinker").setup()
  end
}
