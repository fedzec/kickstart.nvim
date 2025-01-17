-- python interactive terminal setup

return {
	'Vigemus/iron.nvim',
	config = function()
		local iron = require("iron.core")
		local view = require("iron.view")

		iron.setup({
			config = {
				-- Whether a repl should be discarded or not
				scratch_repl = true,
				-- Your repl definitions come here
				repl_definition = {
					sh = {
						-- Can be a table or a function that
						-- returns a table (see below)
						command = { "zsh" }
					},
					python = {
						command = { "ipython", "--no-autoindent" },
						format = require("iron.fts.common").bracketed_paste_python
					}
				},
				-- How the repl window will be displayed
				-- See below for more information
				repl_open_cmd = view.split("40%", {
					winfixwidth = false,
					winfixheight = false,
					-- any window-local configuration can be used here
					number = true
				})
			},
			-- Iron doesn't set keymaps by default anymore.
			-- You can set them here or manually add keymaps to the functions in iron.core
			keymaps = {
				send_motion = "<space>pc",
				visual_send = "<space>pc",
				send_file = "<space>pf",
				send_line = "<space>pl",
				send_paragraph = "<space>pp",
				send_until_cursor = "<space>pu",
				send_mark = "<space>pmm",
				mark_motion = "<space>pmc",
				mark_visual = "<space>pmc",
				remove_mark = "<space>pmd",
				cr = "<space>p<cr>",
				interrupt = "<space>p<space>",
				exit = "<space>pq",
				clear = "<space>px",
			},
			-- If the highlight is on, you can change how it looks
			-- For the available options, check nvim_set_hl
			highlight = {
				italic = true
			},
		})
		vim.keymap.set('n', '<space>prs', '<cmd>IronRepl<cr>')
		vim.keymap.set('n', '<space>prr', '<cmd>IronRestart<cr>')
		vim.keymap.set('n', '<space>prf', '<cmd>IronFocus<cr>')
		vim.keymap.set('n', '<space>prh', '<cmd>IronHide<cr>')
	end
}
