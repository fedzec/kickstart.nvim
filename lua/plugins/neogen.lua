return {
  'danymat/neogen',
  dependencies = {
    'hrsh7th/nvim-cmp',
  },
  version = '*',
  config = function()
    require('neogen').setup {
      snippet_engine = 'luasnip',
    }

    local opts = { noremap = true, silent = true }
    vim.api.nvim_set_keymap('n', '<Leader>ac', ":lua require('neogen').generate({ type = 'class' })<CR>", opts)
    vim.api.nvim_set_keymap('n', '<Leader>af', ":lua require('neogen').generate({ type = 'func' })<CR>", opts)
    vim.api.nvim_set_keymap('n', '<Leader>at', ":lua require('neogen').generate({ type = 'type' })<CR>", opts)
    vim.api.nvim_set_keymap('n', '<Leader>at', ":lua require('neogen').generate({ type = 'file' })<CR>", opts)
  end,
}
