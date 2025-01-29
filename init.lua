--  NOTE: Must happen before plugins are loaded
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.have_nerd_font = false

require 'options.vim_opt'
require 'keymaps.keymaps'

require('lazy').setup({
  require 'plugins.sleuth',
  require 'plugins.which-key',
  require 'plugins.telescope',

  require 'plugins.lsp.lazydev',
  require 'plugins.lsp.luvit-meta',
  require 'plugins.lsp.lspconfig',

  require 'plugins.conform',
  require 'plugins.cmp',
  require 'plugins.indent-blankline',
  require 'plugins.lint',
  require 'plugins.autopairs',
  require 'plugins.neogen',

  require 'plugins.tokyonight',
  require 'plugins.todo-comments',

  require 'plugins.mini',
  --require 'plugins.lualine',

  require 'plugins.dap',

  require 'plugins.treesitter',

  require 'plugins.oil',

  require 'plugins.gitsigns',
  require 'plugins.neogit',

  require 'plugins.toggleterm',

  require 'plugins.dadbod',
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
