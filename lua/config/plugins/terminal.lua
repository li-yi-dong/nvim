return {
	'akinsho/toggleterm.nvim',
	config = function()
		require('toggleterm').setup {
			size = 20,
			open_mapping = [[<c-\>]],
			start_in_insert = true,
			insert_mappings = true,
			close_on_exit = true,
			shell = vim.o.shell,
		}
	end
}
