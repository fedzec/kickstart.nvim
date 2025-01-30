--return {
--  'folke/tokyonight.nvim',
--  lazy = false,
--  priority = 1000,
--  config = function()
--    require('tokyonight').setup {
--      style = 'night',
--      styles = {
--        -- :help nvim_set_hl`
--        comments = { italic = true },
--        keywords = { italic = true },
--        functions = {},
--        variables = {},
--        -- Can be "dark", "transparent" or "normal"
--        sidebars = 'dark',
--        floats = 'dark',
--      },
--      dim_inactive = true,
--    }
--
--    vim.cmd 'colorscheme tokyonight'
--  end,
--}
--return {
--  'EdenEast/nightfox.nvim',
--  lazy = false,
--  priority = 1000,
--  config = function()
--    require('nightfox').setup {}
--    vim.cmd 'colorscheme carbonfox'
--  end,
--}
return {
  'aktersnurra/no-clown-fiesta.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    require('no-clown-fiesta').setup {
      styles = {
        -- You can set any of the style values specified for `:h nvim_set_hl`
        comments = { italic = true },
        functions = {},
        keywords = { italic = true, bold = true },
        lsp = {},
        match_paren = {},
        type = { bold = true },
        variables = {},
      },
    }
    vim.cmd 'colorscheme no-clown-fiesta'
  end,
}
