return {
  'pwntester/octo.nvim',
  version = '*',
  requires = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
    'nvim-tree/nvim-web-devicons',
  },
  cmd = 'Octo',
  event = { { event = 'BufReadCmd', pattern = 'octo://*' } },
  opts = {
    enable_builtin = true,
    default_to_projects_v2 = false,
    default_merge_method = 'squash',
    picker = 'telescope',
  },
  keys = {
    { '<leader>gi', '<cmd>Octo issue list<CR>', desc = 'List Issues (Octo)' },
    { '<leader>gI', '<cmd>Octo issue search<CR>', desc = 'Search Issues (Octo)' },
    { '<leader>gp', '<cmd>Octo pr list<CR>', desc = 'List PRs (Octo)' },
    { '<leader>gP', '<cmd>Octo pr search<CR>', desc = 'Search PRs (Octo)' },
    { '<leader>gr', '<cmd>Octo repo list<CR>', desc = 'List Repos (Octo)' },
    { '<leader>gS', '<cmd>Octo search<CR>', desc = 'Search (Octo)' },

    { '<leader>a', '', desc = '+assignee (Octo)' },
    { '<leader>c', '', desc = '+comment/code (Octo)' },
    { '<leader>l', '', desc = '+label (Octo)' },
    { '<leader>i', '', desc = '+issue (Octo)' },
    { '<leader>r', '', desc = '+react (Octo)' },
    { '<leader>p', '', desc = '+pr (Octo)' },
    { '<leader>v', '', desc = '+review (Octo)' },
    { '@', '@<C-x><C-o>', mode = 'i', silent = true },
    { '#', '#<C-x><C-o>', mode = 'i', silent = true },
  },
  config = function()
    vim.treesitter.language.register('markdown', 'octo')
    require('octo').setup {
      suppress_missing_scope = {
        projects_v2 = true,
      },
    }
  end,
}
