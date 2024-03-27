return {
  'epwalsh/obsidian.nvim',
  version = '*', -- recommended, use latest release instead of latest commit
  lazy = true,
  -- ft = 'markdown',
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  event = {
    -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
    'BufReadPre '
      .. vim.fn.expand '~'
      .. '/Obsidian/Zettelkasten/**.md',
    'BufNewFile ' .. vim.fn.expand '~' .. '/Obsidian/Zettelkasten/**.md',
  },
  dependencies = {
    -- Required.
    'nvim-lua/plenary.nvim',
  },
  opts = {
    workspaces = {
      {
        name = 'Zettelkasten',
        path = '~/Obsidian/Zettelkasten',
      },
    },
    daily_notes = {
      -- Optional, if you keep daily notes in a separate directory.
      folder = 'Daily Notes',
      -- Optional, if you want to change the date format for the ID of daily notes.
      date_format = 'YYYY-MM-DD',
      -- Optional, if you want to change the date format of the default alias of daily notes.
      alias_format = 'YYYY-MM-DD',
      -- Optional, if you want to automatically insert a template from your template directory like 'daily.md'
      template = 'Templates/Daily_Note',
    },
    -- Optional, completion of wiki links, local markdown links, and tags using nvim-cmp.
    completion = {
      -- Set to false to disable completion.
      nvim_cmp = true,
      -- Trigger completion at 2 chars.
      min_chars = 2,
    },
    new_notes_location = 'Fleeting Notes',
    preferred_link_style = 'wiki',
    use_advanced_uri = false,
    picker = {
      -- Set your preferred picker. Can be one of 'telescope.nvim', 'fzf-lua', or 'mini.pick'.
      name = 'telescope.nvim',
      -- Optional, configure key mappings for the picker. These are the defaults.
      -- Not all pickers support all mappings.
      mappings = {
        -- Create a new note from your query.
        new = '<C-x>',
        -- Insert a link to the selected note.
        insert_link = '<C-l>',
      },
    },
  },
}
