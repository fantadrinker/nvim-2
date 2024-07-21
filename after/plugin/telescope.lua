local builtin = require('telescope.builtin')

require('telescope').setup {
	defaults = {
		cache_picker = { num_pickers = 3, limit_entries = 5 },
		path_display = { shorten = { len = 2, exclude = { 1, 2, -2, -1 } } },
		layout_strategy = 'vertical',
		layout_config = {
			height = 0.95,
			width = 0.8,
		},
		preview = false
	}
}

-- vim.keymap.set('n', '<leader>pf', builtin.git_files, {})
-- TODO: show recent files first
vim.keymap.set('n', '<C-p>', builtin.git_files, {})

vim.keymap.set('n', '<leader>fr', function()
	builtin.lsp_references({ preview = true })
end, {})

vim.keymap.set('n', '<leader>fd', function()
	builtin.lsp_definitions({ preview = true })
end, {})

vim.keymap.set('n', '<leader>pf', function()
	builtin.grep_string({
		search = vim.fn.input("Grep > "),
		preview = true,
	});
end)

vim.keymap.set('v', '<C-f>', builtin.grep_string, {})
vim.keymap.set('n', '<C-f>', builtin.live_grep, {})


-- testing realm
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
-- vim.keymap.set('v', '<C-f>', function()
-- 	builtin.grep_string({ search = "test" });
-- end)
-- vim.keymap.set('n', '<C-f>', builtin.live_grep, {})
-- vim.keymap.set('n', '<C-f>', builtin.search_history, {})
