return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    main = 'nvim-treesitter.configs',
    opts = {
      ensure_installed = { 'bash', 'c', 'diff', 'html', 'lua', 'luadoc', 'markdown', 'markdown_inline', 'query', 'vim', 'vimdoc', 'python', 'typst', 'sql', 'zig' },
      auto_install = false,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
        disable = function(_, buf)
          local max_filesize = 100 * 1024
          local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
          if ok and stats and stats.size > max_filesize then
            return true
          end
        end,
      },
      indent = { enable = true, disable = { 'ruby' } },
   },
  },
  --{
  --  'nvim-treesitter/nvim-treesitter-textobjects',
  --  dependencies = { 'nvim-treesitter/nvim-treesitter' },

  --  config = function()
  --    require('nvim-treesitter.configs').setup {
  --      --textobjects = {
  --      --  move = {
  --      --    enable = true,
  --      --    set_jumps = true,
  --      --    goto_next_start = {
  --      --      ['<C-i>'] = '@string',
  --      --    },
  --      --  },
  --      --},
  --      lsp_interop = {
  --        enable = true,
  --        border = 'none',
  --        floating_preview_opts = {},
  --        peek_definition_code = {
  --          ['<leader>lf'] = '@function.outer',
  --          ['<leader>lF'] = '@class.outer',
  --        },
  --      },
  --    }
  --  end,
  --},
}
