return {
	'akinsho/bufferline.nvim',
	version = "*",
	dependencies = 'nvim-tree/nvim-web-devicons',
	config = function()
		vim.opt.termguicolors = true
		require("bufferline").setup({
			options = {
				numbers = function(opts)
					return string.format('%s', opts.ordinal)
				end,
				diagnostics = "nvim_lsp",
			}
		})
	end,
}
