return {
  -- Source: https://www.josean.com/posts/neovim-linting-and-formatting
  'stevearc/conform.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    local conform = require 'conform'

    conform.setup {
      formatters_by_ft = {
        javascript = { 'prettier' },
        typescript = { 'prettier' },
        javascriptreact = { 'prettier' },
        typescriptreact = { 'prettier' },
        svelte = { 'prettier' },
        css = { 'prettier' },
        html = { 'prettier' },
        json = { 'prettier' },
        markdown = { 'prettier' },
        graphql = { 'prettier' },
        lua = { 'stylua' },
        python = { 'black' },
        haskell = { 'ormolu' },
        go = { 'gofmt ' }
      },
    }

    vim.keymap.set({ 'n', 'v' }, '<leader>cf', function()
      conform.format {
        lsp_fallback = true,
        async = false,
        timeout_ms = 3000,
      }
    end, { desc = 'Format file or range (in visual mode)' })
  end,
}
