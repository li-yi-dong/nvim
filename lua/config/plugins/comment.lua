return {
	"numToStr/Comment.nvim",
	opts = {

	},
	lazy = false,
	config = function()
		require('Comment').setup({
			padding = true,
			sticky = true,
			mappings = {
				basic = true,
				extra = false,
			},
		})
	end
}
