return {
  --'EdenEast/nightfox.nvim',
  --lazy = false,
  --priority = 1000,
  --config = function()
  --  vim.cmd 'colorscheme carbonfox'
  --end,
  --
  'folke/tokyonight.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd 'colorscheme tokyonight-night'
  end,
  --
  --'catppuccin/nvim',
  --priority = 1000,
  --config = function()
  --  require('catppuccin').setup {
  --    flavour = 'mocha',
  --    highlight = {
  --      enable = true,
  --      additional_vim_regex_highlighting = false,
  --    },
  --    styles = {
  --      --   comments = { "italic" },
  --      --   conditionals = {},
  --      --   loops = {},
  --      functions = { 'bold' },
  --      keywords = { 'italic' },
  --      --   strings = {},
  --      --   variables = {},
  --      --   numbers = {},
  --      --   booleans = {},
  --      --   properties = {},
  --      --   types = { 'italic' },
  --      --   operators = {},
  --      --   -- miscs = {}, -- Uncomment to turn off hard-coded styles
  --    },
  --  }
  --  vim.cmd 'colorscheme catppuccin'
  --end,
  --
  -- 'bluz71/vim-moonfly-colors',
  --'rose-pine/neovim',
  -- lazy = false,
  --priority = 1000,
  --config = function()
  --  require('rose-pine').setup {
  --    styles = {
  --      italic = false,
  --    },
  --    highlight_groups = {
  --      Comment = { italic = true },
  --    },
  --  }
  --  vim.cmd 'colorscheme rose-pine'
  --end,

  --'rebelot/kanagawa.nvim',
}
