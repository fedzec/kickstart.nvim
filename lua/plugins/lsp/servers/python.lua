return {
  servers = {
    pylsp = {
      settings = {
        pylsp = {
          plugins = {
            pylint = {
              enabled = true,
            },
            yapf = {
              enabled = false,
            },
            autopep8 = {
              enabled = false,
            },
            pyflakes = {
              enabled = true,
            },
            mccabe = {
              enabled = true,
            },
          },
        },
      },
    },

    -- ruff = {
    --   cmd = { 'ruff', 'server' },
    --   filetypes = { 'python' },
    --   settings = {},
    --   root_dir = vim.fn.getcwd(),
    --   single_file_support = true,
    --   on_attach = require('lsp-format').on_attach,
    -- },

    --pylyzer = {
    --  cmd = { 'pylyzer', '--server' },
    --  filetypes = { 'python' },
    --  settings = {
    --    python = {
    --      checkOnType = false,
    --      diagnostics = true,
    --      inlayHints = true,
    --      smartCompletion = true,
    --    },
    --  },
    --  root_dir = vim.fn.getcwd(),
    --  single_file_support = true,
    --},
  },
}
