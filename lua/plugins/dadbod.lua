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
      -- Your DBUI configuratdb_ui_disable_mappings_dbuiion
      vim.g.db_ui_use_nerd_fonts = 0
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
