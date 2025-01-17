--  NOTE: Must happen before plugins are loaded
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.have_nerd_font = false

require 'options.vim_opt'
require 'keymaps.keymaps'

require('lazy').setup({
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
  -- See `:help gitsigns` to understand what the configuration keys do
  { -- Adds git related signs to the gutter, as well as utilities for managing changes
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    },
  },

  require 'plugins.which_key',
  require 'plugins.telescope',

  require 'plugins.lsp.lazydev',
  require 'plugins.lsp.luvit',
  require 'plugins.lsp.config',

  require 'plugins.conform',
  require 'plugins.completion',
  require 'plugins.colorscheme',
  require 'plugins.todo_comments',
  require 'plugins.mini',
  --require 'plugins.plugins.debug',
  require 'plugins.tree_parser',
  require 'plugins.indent_line',
  require 'plugins.lint',
  require 'plugins.autopairs',
  require 'plugins.neo-tree',

  require 'plugins.gitsigns',
  require 'plugins.neogit',

  require 'plugins.toggleterm',
  -- require 'plugins.py_interactive',

  -- you can continue same window with `<space>sr` which resumes last telescope search
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

-- modeline
-- vim: ts=2 sts=2 sw=2 et
