return {
  'folke/tokyonight.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    require('tokyonight').setup {
      style = 'night',
      styles = {
        -- :help nvim_set_hl`
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
        -- Can be "dark", "transparent" or "normal"
        sidebars = 'dark',
        floats = 'dark',
      },
      dim_inactive = true,
    }

    vim.cmd 'colorscheme tokyonight'
  end,
}
