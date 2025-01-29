return {
  {
    'kristijanhusak/vim-dadbod-ui',
    dependencies = {
      { 'tpope/vim-dadbod', lazy = true },
      { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true },
    },
    cmd = {
      'DBUIToggle',
      'DBUIAddConnection',
      'DBUIFindBuffer',
      'DBUILastQueryInfo',
    },
    init = function()
      vim.g.db_ui_use_nerd_fonts = 0
      vim.g.db_ui_execute_on_save = 0
      vim.g.db_ui_debug = 1
      local map = function(keys, func, desc, mode)
        mode = mode or 'n'
        vim.keymap.set(mode, keys, func, { desc = 'Database: ' .. desc })
      end
      map('<leader>db', ':DBUIToggle<CR>', 'toggle D[B]UI')
      map('<leader>dn', ':DBUIAddConnection<CR>', 'enter [N]ew connection')
      map('<leader>df', ':DBUIFindBuffer<CR>', '[F]ind or assign open buffer')
      map('<leader>di', ':DBUILastQueryInfo<CR>', '[I]nfo about last query')
    end,
  },
}
