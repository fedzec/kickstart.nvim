return {
  'neovim/nvim-lspconfig',
  -- Main LSP Configuration
  dependencies = {
    {
      'williamboman/mason.nvim',
      opts = {
        PATH = 'append',
      },
    },
    -- 'williamboman/mason-lspconfig.nvim',
    -- 'WhoIsSethDaniel/mason-tool-installer.nvim',
    { 'j-hui/fidget.nvim', opts = {} },
    'hrsh7th/cmp-nvim-lsp',
    'lukas-reineke/lsp-format.nvim',
  },
  config = function()
    -- define autocommand on LspAttach
    require 'plugins.lsp.lspautocmd'

    -- Change diagnostic symbols in the sign column (gutter)
    if vim.g.have_nerd_font then
      local signs = { ERROR = '', WARN = '', INFO = '', HINT = '' }
      local diagnostic_signs = {}
      for type, icon in pairs(signs) do
        diagnostic_signs[vim.diagnostic.severity[type]] = icon
      end
      vim.diagnostic.config { signs = { text = diagnostic_signs } }
    end

    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = vim.tbl_deep_extend('force', capabilities, require('cmp_nvim_lsp').default_capabilities())

    local function apply_server_capabilities(servers)
      for server_name, server in pairs(servers) do
        server.capabilities = vim.tbl_deep_extend('force', {}, capabilities, server.capabilities or {})
        require('lspconfig')[server_name].setup(server)
      end
    end

    local py_servers = require 'plugins.lsp.servers.python'
    apply_server_capabilities(py_servers['servers'])

    local c_servers = require 'plugins.lsp.servers.c'
    apply_server_capabilities(c_servers['servers'])

    local zig_servers = require 'plugins.lsp.servers.zig'
    apply_server_capabilities(zig_servers['servers'])

    local lua_servers = require 'plugins.lsp.servers.lua'
    apply_server_capabilities(lua_servers['servers'])
  end,
}
