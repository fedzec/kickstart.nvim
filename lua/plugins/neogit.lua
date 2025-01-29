return {
  'NeogitOrg/neogit',
  dependencies = {
    'nvim-lua/plenary.nvim', -- required
    'sindrets/diffview.nvim', -- optional - Diff integration
    'nvim-telescope/telescope.nvim', -- optional
  },
  config = function()
    local neogit = require 'neogit'
    neogit.setup {
      commit_editor = {
        ['q'] = 'Close',
        ['<m-p>'] = 'PrevMessage',
        ['<m-n>'] = 'NextMessage',
        ['<m-r>'] = 'ResetMessage',
        ['<c-c><c-c>'] = 'Submit',
        ['<c-c><c-k>'] = 'Abort',
      },
      commit_editor_I = {
        ['<c-c><c-c>'] = 'Submit',
        ['<c-c><c-k>'] = 'Abort',
      },

      rebase_editor = {
        ['p'] = 'Pick',
        ['r'] = 'Reword',
        ['e'] = 'Edit',
        ['s'] = 'Squash',
        ['f'] = 'Fixup',
        ['x'] = 'Execute',
        ['d'] = 'Drop',
        ['b'] = 'Break',
        ['q'] = 'Close',
        ['<cr>'] = 'OpenCommit',
        ['gk'] = 'MoveUp',
        ['gj'] = 'MoveDown',
        ['<c-c><c-c>'] = 'Submit',
        ['<c-c><c-k>'] = 'Abort',
        ['[c'] = 'OpenOrScrollUp',
        [']c'] = 'OpenOrScrollDown',
      },
      rebase_editor_I = {
        ['<c-c><c-c>'] = 'Submit',
        ['<c-c><c-k>'] = 'Abort',
      },

      finder = {
        ['<cr>'] = 'Select',
        ['<c-c>'] = 'Close',
        ['<esc>'] = 'Close',
        ['<c-n>'] = 'Next',
        ['<c-p>'] = 'Previous',
        ['<down>'] = 'Next',
        ['<up>'] = 'Previous',
        ['<tab>'] = 'InsertCompletion',
        ['<space>'] = 'MultiselectToggleNext',
        ['<s-space>'] = 'MultiselectTogglePrevious',
        ['<c-j>'] = 'NOP',
        ['<ScrollWheelDown>'] = 'ScrollWheelDown',
        ['<ScrollWheelUp>'] = 'ScrollWheelUp',
        ['<ScrollWheelLeft>'] = 'NOP',
        ['<ScrollWheelRight>'] = 'NOP',
        ['<LeftMouse>'] = 'MouseClick',
        ['<2-LeftMouse>'] = 'NOP',
      },

      popup = {
        ['?'] = 'HelpPopup',
        ['A'] = 'CherryPickPopup',
        ['d'] = 'DiffPopup',
        ['M'] = 'RemotePopup',
        ['P'] = 'PushPopup',
        ['X'] = 'ResetPopup',
        ['Z'] = 'StashPopup',
        ['i'] = 'IgnorePopup',
        ['t'] = 'TagPopup',
        ['b'] = 'BranchPopup',
        ['B'] = 'BisectPopup',
        ['w'] = 'WorktreePopup',
        ['c'] = 'CommitPopup',
        ['f'] = 'FetchPopup',
        ['l'] = 'LogPopup',
        ['m'] = 'MergePopup',
        ['p'] = 'PullPopup',
        ['r'] = 'RebasePopup',
        ['v'] = 'RevertPopup',
      },

      status = {
        ['j'] = 'MoveDown',
        ['k'] = 'MoveUp',
        ['o'] = 'OpenTree',
        ['q'] = 'Close',
        ['I'] = 'InitRepo',
        ['1'] = 'Depth1',
        ['2'] = 'Depth2',
        ['3'] = 'Depth3',
        ['4'] = 'Depth4',
        ['Q'] = 'Command',
        ['<tab>'] = 'Toggle',
        ['x'] = 'Discard',
        ['s'] = 'Stage',
        ['S'] = 'StageUnstaged',
        ['<c-s>'] = 'StageAll',
        ['u'] = 'Unstage',
        ['K'] = 'Untrack',
        ['U'] = 'UnstageStaged',
        ['y'] = 'ShowRefs',
        ['$'] = 'CommandHistory',
        ['Y'] = 'YankSelected',
        ['<c-r>'] = 'RefreshBuffer',
        ['<cr>'] = 'GoToFile',
        ['<s-cr>'] = 'PeekFile',
        ['<c-v>'] = 'VSplitOpen',
        ['<c-x>'] = 'SplitOpen',
        ['<c-t>'] = 'TabOpen',
        ['{'] = 'GoToPreviousHunkHeader',
        ['}'] = 'GoToNextHunkHeader',
        ['[c'] = 'OpenOrScrollUp',
        [']c'] = 'OpenOrScrollDown',
        ['<c-k>'] = 'PeekUp',
        ['<c-j>'] = 'PeekDown',
      },
    }
    local map = function(keys, func, desc, mode)
      mode = mode or 'n'
      vim.keymap.set(mode, keys, func, { desc = desc })
    end

    map('<leader>gg', ':Neogit<CR>', 'neo[G]itStatus tab')
    map('<leader>gr', ':NeogitResetState<CR>', '[R]eset all popus')
    map('<leader>gl', ':NeogitLog<CR>', 'Neogit [L]og for current file')
    map('<leader>gc', ':NeogitCommit<CR>', 'Neogit [C]ommit view')
  end,
}
